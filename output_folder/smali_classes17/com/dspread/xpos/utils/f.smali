.class public Lcom/dspread/xpos/utils/f;
.super Ljava/lang/Object;
.source "SpResetUtils.java"


# static fields
.field static final a:Ljava/lang/String; = "/sys/devices/platform/charger/sp_rst"

.field static final b:Ljava/lang/String; = "/sys/devices/platform/charger/sp_power_ctrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/charger/sp_rst"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, -0x30

    .line 6
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(I)V
    .locals 1

    add-int/lit8 p0, p0, 0x30

    .line 1
    const-string v0, "/sys/devices/platform/charger/sp_power_ctrl"

    invoke-static {v0, p0}, Lcom/dspread/xpos/utils/f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 1

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 9
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 10
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 11
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static b(I)V
    .locals 1

    add-int/lit8 p0, p0, 0x30

    .line 1
    const-string v0, "/sys/devices/platform/charger/sp_rst"

    invoke-static {v0, p0}, Lcom/dspread/xpos/utils/f;->a(Ljava/lang/String;I)V

    return-void
.end method
