import { defineConfig } from 'vitepress'
// @ts-expect-error @types/node
import { join } from "node:path";

import pluginApi from "../../client/pkg-ahqstore/docs/@ahqstore/plugin-api/typedoc-sidebar.json";
import pluginScript from "../../client/src-tauri/plugin-script/types/docs/@ahqstore/env-types/typedoc-sidebar.json";

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "AHQ Store API Docs",
  description: "Documentation for AHQ Store Packaged durated in 1 site",
  base: "/docs/",
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    aside: false,
    nav: [
      { text: 'Home', link: '/' },
      { text: '@ahqstore/plugin-api', activeMatch: '@ahqstore/plugin-api/*', link: '/@ahqstore/plugin-api/' },
      { text: '@ahqstore/env-types', activeMatch: '@ahqstore/env-types/*', link: '/@ahqstore/env-types/' }
    ],

    sidebar: {
      '/@ahqstore/plugin-api/': [
        {
          text: '@ahqstore/plugin-api',
          link: "/@ahqstore/plugin-api",
          items: [
            {
              text: "Legacy Doc",
              link: "/legacy/@ahqstore/plugin-api"
            },
            ...pluginApi
          ],
        },
        {
          text: '@ahqstore/env-types',
          link: "/@ahqstore/env-types"
        },
      ],
      '/@ahqstore/env-types': [
        {
          text: '@ahqstore/env-types',
          link: "/@ahqstore/env-types",
          items: [
            {
              text: "Legacy Doc",
              link: "/legacy/@ahqstore/env-types"
            },
            ...pluginScript
          ],
        },
        {
          text: '@ahqstore/plugin-api',
          link: "/@ahqstore/plugin-api"
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
