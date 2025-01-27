.class public abstract Lch/qos/logback/core/pattern/CompositeConverter;
.super Lch/qos/logback/core/pattern/DynamicConverter;
.source "CompositeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/pattern/DynamicConverter<",
        "TE;>;"
    }
.end annotation


# instance fields
.field childConverter:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    .local p0, "this":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/pattern/DynamicConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 21
    .local p0, "this":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    .local v1, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, v0, p1}, Lch/qos/logback/core/pattern/Converter;->write(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 23
    iget-object v1, v1, Lch/qos/logback/core/pattern/Converter;->next:Lch/qos/logback/core/pattern/Converter;

    goto :goto_0

    .line 26
    .end local v1    # "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "intermediary":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lch/qos/logback/core/pattern/CompositeConverter;->transform(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getChildConverter()Lch/qos/logback/core/pattern/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    return-object v0
.end method

.method public setChildConverter(Lch/qos/logback/core/pattern/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    .local p1, "child":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    .local p0, "this":Lch/qos/logback/core/pattern/CompositeConverter;, "Lch/qos/logback/core/pattern/CompositeConverter<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "CompositeConverter<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    if-eqz v1, :cond_1

    .line 48
    const-string v1, ", children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract transform(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
