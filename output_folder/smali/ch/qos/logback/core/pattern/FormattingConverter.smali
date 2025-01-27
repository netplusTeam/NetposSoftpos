.class public abstract Lch/qos/logback/core/pattern/FormattingConverter;
.super Lch/qos/logback/core/pattern/Converter;
.source "FormattingConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/pattern/Converter<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final INITIAL_BUF_SIZE:I = 0x100

.field static final MAX_CAPACITY:I = 0x400


# instance fields
.field formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    .local p0, "this":Lch/qos/logback/core/pattern/FormattingConverter;, "Lch/qos/logback/core/pattern/FormattingConverter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/pattern/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFormattingInfo()Lch/qos/logback/core/pattern/FormatInfo;
    .locals 1

    .line 24
    .local p0, "this":Lch/qos/logback/core/pattern/FormattingConverter;, "Lch/qos/logback/core/pattern/FormattingConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    return-object v0
.end method

.method public final setFormattingInfo(Lch/qos/logback/core/pattern/FormatInfo;)V
    .locals 2
    .param p1, "formattingInfo"    # Lch/qos/logback/core/pattern/FormatInfo;

    .line 28
    .local p0, "this":Lch/qos/logback/core/pattern/FormattingConverter;, "Lch/qos/logback/core/pattern/FormattingConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-nez v0, :cond_0

    .line 31
    iput-object p1, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    .line 32
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FormattingInfo has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 5
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "TE;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lch/qos/logback/core/pattern/FormattingConverter;, "Lch/qos/logback/core/pattern/FormattingConverter<TE;>;"
    .local p2, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lch/qos/logback/core/pattern/FormattingConverter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    return-void

    .line 43
    :cond_0
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/FormatInfo;->getMin()I

    move-result v1

    .line 44
    .local v1, "min":I
    iget-object v2, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v2}, Lch/qos/logback/core/pattern/FormatInfo;->getMax()I

    move-result v2

    .line 46
    .local v2, "max":I
    if-nez v0, :cond_2

    .line 47
    if-lez v1, :cond_1

    .line 48
    invoke-static {p1, v1}, Lch/qos/logback/core/pattern/SpacePadder;->spacePad(Ljava/lang/StringBuilder;I)V

    .line 49
    :cond_1
    return-void

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 54
    .local v3, "len":I
    if-le v3, v2, :cond_4

    .line 55
    iget-object v4, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v4}, Lch/qos/logback/core/pattern/FormatInfo;->isLeftTruncate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    sub-int v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 58
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_4
    if-ge v3, v1, :cond_6

    .line 61
    iget-object v4, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v4}, Lch/qos/logback/core/pattern/FormatInfo;->isLeftPad()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 62
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/pattern/SpacePadder;->leftPad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_0

    .line 64
    :cond_5
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/pattern/SpacePadder;->rightPad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_0

    .line 67
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_0
    return-void
.end method
