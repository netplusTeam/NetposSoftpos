.class public Lch/qos/logback/core/pattern/IdentityCompositeConverter;
.super Lch/qos/logback/core/pattern/CompositeConverter;
.source "IdentityCompositeConverter.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    .local p0, "this":Lch/qos/logback/core/pattern/IdentityCompositeConverter;, "Lch/qos/logback/core/pattern/IdentityCompositeConverter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/pattern/CompositeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected transform(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 20
    .local p0, "this":Lch/qos/logback/core/pattern/IdentityCompositeConverter;, "Lch/qos/logback/core/pattern/IdentityCompositeConverter<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    return-object p2
.end method
