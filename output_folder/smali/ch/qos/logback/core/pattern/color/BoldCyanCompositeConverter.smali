.class public Lch/qos/logback/core/pattern/color/BoldCyanCompositeConverter;
.super Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;
.source "BoldCyanCompositeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lch/qos/logback/core/pattern/color/BoldCyanCompositeConverter;, "Lch/qos/logback/core/pattern/color/BoldCyanCompositeConverter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getForegroundColorCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 30
    .local p0, "this":Lch/qos/logback/core/pattern/color/BoldCyanCompositeConverter;, "Lch/qos/logback/core/pattern/color/BoldCyanCompositeConverter<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    const-string v0, "1;36"

    return-object v0
.end method
