.class public Lcom/dspread/xpos/utils/DeviceModelUtils;
.super Ljava/lang/Object;
.source "DeviceModelUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/utils/DeviceModelUtils$Model;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D20:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D30:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D50:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D60:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->MP600:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->FP9810:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
