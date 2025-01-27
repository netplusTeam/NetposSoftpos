.class public abstract Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;
.super Lch/qos/logback/core/pattern/CompositeConverter;
.source "ForegroundCompositeConverterBase.java"


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


# static fields
.field private static final SET_DEFAULT_COLOR:Ljava/lang/String; = "\u001b[0;39m"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;, "Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/pattern/CompositeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getForegroundColorCode(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
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

    .line 31
    .local p0, "this":Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;, "Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\u001b["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0, p1}, Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;->getForegroundColorCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "\u001b[0;39m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
