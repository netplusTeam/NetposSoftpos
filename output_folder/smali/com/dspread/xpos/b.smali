.class public Lcom/dspread/xpos/b;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static a:Landroid_serialport_api/SerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Landroid_serialport_api/SerialPort;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dspread/xpos/b;->a:Landroid_serialport_api/SerialPort;

    if-nez v0, :cond_0

    .line 8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance p0, Landroid_serialport_api/SerialPort;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Landroid_serialport_api/SerialPort;-><init>(ZLjava/lang/String;Ljava/io/File;II)V

    sput-object p0, Lcom/dspread/xpos/b;->a:Landroid_serialport_api/SerialPort;

    .line 12
    :cond_0
    sget-object p0, Lcom/dspread/xpos/b;->a:Landroid_serialport_api/SerialPort;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 13
    sget-object v0, Lcom/dspread/xpos/b;->a:Landroid_serialport_api/SerialPort;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid_serialport_api/SerialPort;->close()V

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/dspread/xpos/b;->a:Landroid_serialport_api/SerialPort;

    :cond_0
    return-void
.end method
