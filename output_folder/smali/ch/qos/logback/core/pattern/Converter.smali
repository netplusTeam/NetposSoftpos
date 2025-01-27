.class public abstract Lch/qos/logback/core/pattern/Converter;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lch/qos/logback/core/pattern/Converter;
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

    .line 22
    .local p0, "this":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract convert(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final getNext()Lch/qos/logback/core/pattern/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/Converter;->next:Lch/qos/logback/core/pattern/Converter;

    return-object v0
.end method

.method public final setNext(Lch/qos/logback/core/pattern/Converter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    .local p1, "next":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/Converter;->next:Lch/qos/logback/core/pattern/Converter;

    if-nez v0, :cond_0

    .line 49
    iput-object p1, p0, Lch/qos/logback/core/pattern/Converter;->next:Lch/qos/logback/core/pattern/Converter;

    .line 50
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Next converter has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "TE;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<TE;>;"
    .local p2, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    return-void
.end method
