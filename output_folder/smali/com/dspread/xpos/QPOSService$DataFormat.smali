.class public final enum Lcom/dspread/xpos/QPOSService$DataFormat;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DataFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$DataFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OLD:Lcom/dspread/xpos/QPOSService$DataFormat;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$DataFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$DataFormat;

    const-string v1, "OLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DataFormat;->OLD:Lcom/dspread/xpos/QPOSService$DataFormat;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$DataFormat;->a()[Lcom/dspread/xpos/QPOSService$DataFormat;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$DataFormat;->a:[Lcom/dspread/xpos/QPOSService$DataFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$DataFormat;
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$DataFormat;

    sget-object v1, Lcom/dspread/xpos/QPOSService$DataFormat;->OLD:Lcom/dspread/xpos/QPOSService$DataFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$DataFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$DataFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$DataFormat;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$DataFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$DataFormat;->a:[Lcom/dspread/xpos/QPOSService$DataFormat;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$DataFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$DataFormat;

    return-object v0
.end method
