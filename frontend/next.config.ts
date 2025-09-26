import type { NextConfig } from "next";
import createNextIntlPlugin from "next-intl/plugin";

const nextConfig: NextConfig = {
  /* config options here */
};

// export default nextConfig;
const withNextIntl = createNextIntlPlugin();
// export default nextConfig;
export default withNextIntl(nextConfig);

// import type { NextConfig } from "next";
// import createNextIntlPlugin from "next-intl/plugin";

// const withNextIntl = createNextIntlPlugin();

// const nextConfig: NextConfig = {
//   output: "export",
//   images: {
//     unoptimized: true,
//   },
//   basePath: process.env.GITHUB_PAGES ? "/KreativHack" : "",
//   assetPrefix: process.env.GITHUB_PAGES ? "/KreativHack/" : "",
//   eslint: {
//     ignoreDuringBuilds: true,
//   },
// };

// export default withNextIntl(nextConfig);
