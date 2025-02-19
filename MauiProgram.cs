using CommunityToolkit.Maui;
using Microsoft.Extensions.Logging;

namespace LiverLife
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
               .UseMauiApp<App>().UseMauiCommunityToolkit()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Bold.ttf", "OpenSansBold");
                    fonts.AddFont("OpenSans-Italic.ttf", "OpenSansItalic");
                    fonts.AddFont("EBGaramond-BoldItalic", "GaramondBoldItalic");
                    fonts.AddFont("EBGaramond-Bold", "GaramondBold");
                    fonts.AddFont("EBGaramond-ExtraBold", "GaramondExtraBold");
                    fonts.AddFont("Raleway-Regular.ttf", "Raleway-Regular");
                    fonts.AddFont("Raleway-SemiBold.ttf", "Raleway-SemiBold");
                    fonts.AddFont("OoohBaby-Regular.ttf", "OoohBaby-Regular");
                });

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
