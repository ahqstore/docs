import { defineConfig } from 'vitepress'
// @ts-expect-error @types/node
import { join } from "node:path";

import pluginApi from "../../client/pkg-ahqstore/docs/@ahqstore/plugin-api/typedoc-sidebar.json";
import pluginScript from "../../client/src-tauri/plugin-script/types/docs/@ahqstore/env-types/typedoc-sidebar.json";

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "AHQ Store API Docs",
  description: "Documentation for AHQ Store APIs",
  base: "/docs/",
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    outline: {
      level: [2, 3]
    },
    logo: "./favicon.png",
    nav: [
      { text: 'Home', link: '/' },
      { text: '@ahqstore/plugin-api', activeMatch: '@ahqstore/plugin-api/*', link: '/@ahqstore/plugin-api/' },
      { text: '@ahqstore/env-types', activeMatch: '@ahqstore/env-types/*', link: '/@ahqstore/env-types/' },
      {
        text: "Legacy Docs",
        items: [
          { text: '@ahqstore/plugin-api', link: 'https://ahqstore.github.io/docs/legacy/@ahqstore/plugin-api/index.html' },
          { text: '@ahqstore/env-types', link: 'https://ahqstore.github.io/docs/legacy/@ahqstore/env-types/index.html' }
        ]
      }
    ],

    sidebar: {
      '/@ahqstore/plugin-api/': [
        {
          text: "Legacy Documentation",
          link: "https://ahqstore.github.io/docs/legacy/@ahqstore/plugin-api/index.html"
        },
        {
          text: '@ahqstore/plugin-api',
          link: "/@ahqstore/plugin-api/",
          items: [
            ...pluginApi.map((s) => ({ ...s, collapsed: false }))
          ],
        },
        {
          text: '@ahqstore/env-types',
          link: "/@ahqstore/env-types/"
        },
      ],
      '/@ahqstore/env-types': [
        {
          text: "Legacy Documentation",
          link: "https://ahqstore.github.io/docs/legacy/@ahqstore/env-types/index.html"
        },
        {
          text: '@ahqstore/env-types',
          link: "/@ahqstore/env-types/",
          items: [
            ...pluginScript.map((s) => ({ ...s, collapsed: false }))
          ],
        },
        {
          text: '@ahqstore/plugin-api',
          link: "/@ahqstore/plugin-api/"
        },
      ]
    },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/vuejs/vitepress' }
    ]
  },
  // @ts-expect-error @types/node
  outDir: join(import.meta.dirname, "../../docs")
})
