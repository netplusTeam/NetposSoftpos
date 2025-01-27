.class public abstract Lch/qos/logback/core/LayoutBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "LayoutBase.java"

# interfaces
.implements Lch/qos/logback/core/Layout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;",
        "Lch/qos/logback/core/Layout<",
        "TE;>;"
    }
.end annotation


# instance fields
.field fileFooter:Ljava/lang/String;

.field fileHeader:Ljava/lang/String;

.field presentationFooter:Ljava/lang/String;

.field presentationHeader:Ljava/lang/String;

.field protected started:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 64
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    const-string/jumbo v0, "text/plain"

    return-object v0
.end method

.method public getContext()Lch/qos/logback/core/Context;
    .locals 1

    .line 32
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method public getFileFooter()Ljava/lang/String;
    .locals 1

    .line 60
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->fileFooter:Ljava/lang/String;

    return-object v0
.end method

.method public getFileHeader()Ljava/lang/String;
    .locals 1

    .line 48
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->fileHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationFooter()Ljava/lang/String;
    .locals 1

    .line 56
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->presentationFooter:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationHeader()Ljava/lang/String;
    .locals 1

    .line 52
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/LayoutBase;->presentationHeader:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 44
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/LayoutBase;->started:Z

    return v0
.end method

.method public setContext(Lch/qos/logback/core/Context;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 28
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->context:Lch/qos/logback/core/Context;

    .line 29
    return-void
.end method

.method public setFileFooter(Ljava/lang/String;)V
    .locals 0
    .param p1, "footer"    # Ljava/lang/String;

    .line 72
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->fileFooter:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setFileHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .line 68
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->fileHeader:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPresentationFooter(Ljava/lang/String;)V
    .locals 0
    .param p1, "footer"    # Ljava/lang/String;

    .line 80
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->presentationFooter:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPresentationHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .line 76
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/LayoutBase;->presentationHeader:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public start()V
    .locals 1

    .line 36
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/LayoutBase;->started:Z

    .line 37
    return-void
.end method

.method public stop()V
    .locals 1

    .line 40
    .local p0, "this":Lch/qos/logback/core/LayoutBase;, "Lch/qos/logback/core/LayoutBase<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/LayoutBase;->started:Z

    .line 41
    return-void
.end method
