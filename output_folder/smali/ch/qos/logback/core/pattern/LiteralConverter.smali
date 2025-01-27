.class public final Lch/qos/logback/core/pattern/LiteralConverter;
.super Lch/qos/logback/core/pattern/Converter;
.source "LiteralConverter.java"


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


# instance fields
.field literal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .line 20
    .local p0, "this":Lch/qos/logback/core/pattern/LiteralConverter;, "Lch/qos/logback/core/pattern/LiteralConverter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/pattern/Converter;-><init>()V

    .line 21
    iput-object p1, p0, Lch/qos/logback/core/pattern/LiteralConverter;->literal:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 25
    .local p0, "this":Lch/qos/logback/core/pattern/LiteralConverter;, "Lch/qos/logback/core/pattern/LiteralConverter<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/LiteralConverter;->literal:Ljava/lang/String;

    return-object v0
.end method
