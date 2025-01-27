.class public Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;
.super Lch/qos/logback/core/encoder/LayoutWrappingEncoder;
.source "PatternLayoutEncoderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected outputPatternAsHeader:Z

.field pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;, "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->outputPatternAsHeader:Z

    return-void
.end method


# virtual methods
.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 27
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;, "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public isOutputPatternAsHeader()Z
    .locals 1

    .line 35
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;, "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->outputPatternAsHeader:Z

    return v0
.end method

.method public isOutputPatternAsPresentationHeader()Z
    .locals 1

    .line 49
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;, "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->outputPatternAsHeader:Z

    return v0
.end method

.method public setLayout(Lch/qos/logback/core/Layout;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Layout<",
            "TE;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;, "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<TE;>;"
    .local p1, "layout":Lch/qos/logback/core/Layout;, "Lch/qos/logback/core/Layout<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "one cannot set the layout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputPatternAsHeader(Z)V
    .locals 0
    .param p1, "outputPatternAsHeader"    # Z

    .line 45
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;, "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->outputPatternAsHeader:Z

    .line 46
    return-void
.end method

.method public setOutputPatternAsPresentationHeader(Z)V
    .locals 1
    .param p1, "outputPatternAsHeader"    # Z

    .line 56
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;, "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<TE;>;"
    const-string v0, "[outputPatternAsPresentationHeader] property is deprecated. Please use [outputPatternAsHeader] option instead."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->addWarn(Ljava/lang/String;)V

    .line 57
    iput-boolean p1, p0, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->outputPatternAsHeader:Z

    .line 58
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .line 31
    .local p0, "this":Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;, "Lch/qos/logback/core/pattern/PatternLayoutEncoderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/pattern/PatternLayoutEncoderBase;->pattern:Ljava/lang/String;

    .line 32
    return-void
.end method
