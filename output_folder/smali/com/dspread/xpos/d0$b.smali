.class Lcom/dspread/xpos/d0$b;
.super Ljava/lang/Object;
.source "LogFileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/dspread/xpos/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/dspread/xpos/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dspread/xpos/d0;-><init>(Lcom/dspread/xpos/d0$a;)V

    sput-object v0, Lcom/dspread/xpos/d0$b;->a:Lcom/dspread/xpos/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/dspread/xpos/d0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/d0$b;->a:Lcom/dspread/xpos/d0;

    return-object v0
.end method
