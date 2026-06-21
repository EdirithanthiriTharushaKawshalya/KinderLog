import type { Metadata } from "next";
import { Fredoka, Plus_Jakarta_Sans } from "next/font/google";
import "./globals.css";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";

const fredoka = Fredoka({
  variable: "--font-fredoka",
  subsets: ["latin"],
  weight: ["300", "400", "500", "600", "700"],
});

const plusJakartaSans = Plus_Jakarta_Sans({
  variable: "--font-plus-jakarta-sans",
  subsets: ["latin"],
  weight: ["300", "400", "500", "600", "700", "800"],
});

export const metadata: Metadata = {
  title: "DailyKids Preschool",
  description:
    "DailyKids Preschool offers quality early childhood education across multiple branches. Explore our curriculum, facilities, and admissions process.",
};

export default function RootLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <html
      lang="en"
      className={`${fredoka.variable} ${plusJakartaSans.variable} h-full antialiased`}
    >
      <body className="min-h-full flex flex-col relative overflow-x-hidden">
        {/* Animated Background Gradient Blobs (Inspired by the uploaded design) */}
        <div className="fixed inset-0 z-[-10] overflow-hidden pointer-events-none">
          {/* Orange/Red Blob - Top Left */}
          <div className="absolute top-[-10%] left-[-15%] w-[60vw] h-[60vw] max-w-[800px] max-h-[800px] rounded-full bg-[radial-gradient(circle_at_center,rgba(251,113,133,0.35)_0%,rgba(253,186,116,0.18)_50%,transparent_70%)] blur-[80px] md:blur-[120px] animate-blob-1" />
          
          {/* Violet/Purple Blob - Right Middle */}
          <div className="absolute top-[10%] right-[-10%] w-[70vw] h-[70vw] max-w-[900px] max-h-[900px] rounded-full bg-[radial-gradient(circle_at_center,rgba(168,85,247,0.35)_0%,rgba(129,140,248,0.18)_50%,transparent_70%)] blur-[90px] md:blur-[140px] animate-blob-2" />
          
          {/* Cyan/Blue Blob - Bottom Left */}
          <div className="absolute bottom-[-15%] left-[5%] w-[65vw] h-[65vw] max-w-[850px] max-h-[850px] rounded-full bg-[radial-gradient(circle_at_center,rgba(6,182,212,0.30)_0%,rgba(99,102,241,0.15)_50%,transparent_70%)] blur-[80px] md:blur-[120px] animate-blob-3" />
        </div>

        <Navbar />
        <main className="flex-1">{children}</main>
        <Footer />
      </body>
    </html>
  );
}
