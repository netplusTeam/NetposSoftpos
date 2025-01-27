.class final Lcom/sleepycat/utilint/FormatUtil$1;
.super Ljava/lang/ThreadLocal;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/utilint/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/DecimalFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/sleepycat/utilint/FormatUtil$1;->initialValue()Ljava/text/DecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/text/DecimalFormat;
    .locals 2

    .line 30
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###,###,###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
