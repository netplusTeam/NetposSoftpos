.class public Lch/qos/logback/core/util/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaVendor()Ljava/lang/String;
    .locals 2

    .line 19
    const-string v0, "java.vendor"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
