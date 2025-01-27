.class public Lch/qos/logback/core/pattern/ReplacingCompositeConverter;
.super Lch/qos/logback/core/pattern/CompositeConverter;
.source "ReplacingCompositeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/pattern/CompositeConverter<",
        "TE;>;"
    }
.end annotation


# instance fields
.field pattern:Ljava/util/regex/Pattern;

.field regex:Ljava/lang/String;

.field replacement:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    .local p0, "this":Lch/qos/logback/core/pattern/ReplacingCompositeConverter;, "Lch/qos/logback/core/pattern/ReplacingCompositeConverter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/pattern/CompositeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 26
    .local p0, "this":Lch/qos/logback/core/pattern/ReplacingCompositeConverter;, "Lch/qos/logback/core/pattern/ReplacingCompositeConverter<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->getOptionList()Ljava/util/List;

    move-result-object v0

    .line 27
    .local v0, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 28
    const-string v1, "at least two options are expected whereas you have declared none"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->addError(Ljava/lang/String;)V

    .line 29
    return-void

    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 34
    .local v1, "numOpts":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at least two options are expected whereas you have declared only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "as ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->addError(Ljava/lang/String;)V

    .line 36
    return-void

    .line 38
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->regex:Ljava/lang/String;

    .line 39
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->pattern:Ljava/util/regex/Pattern;

    .line 40
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->replacement:Ljava/lang/String;

    .line 41
    invoke-super {p0}, Lch/qos/logback/core/pattern/CompositeConverter;->start()V

    .line 42
    return-void
.end method

.method protected transform(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lch/qos/logback/core/pattern/ReplacingCompositeConverter;, "Lch/qos/logback/core/pattern/ReplacingCompositeConverter<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->started:Z

    if-nez v0, :cond_0

    .line 47
    return-object p2

    .line 48
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;->replacement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
