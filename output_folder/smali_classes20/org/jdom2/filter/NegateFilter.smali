.class final Lorg/jdom2/filter/NegateFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "NegateFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdom2/filter/AbstractFilter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final filter:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jdom2/filter/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter<",
            "*>;)V"
        }
    .end annotation

    .line 79
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<*>;"
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/jdom2/filter/NegateFilter;->filter:Lorg/jdom2/filter/Filter;

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 97
    if-ne p0, p1, :cond_0

    .line 98
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_0
    instance-of v0, p1, Lorg/jdom2/filter/NegateFilter;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/jdom2/filter/NegateFilter;->filter:Lorg/jdom2/filter/Filter;

    move-object v1, p1

    check-cast v1, Lorg/jdom2/filter/NegateFilter;

    iget-object v1, v1, Lorg/jdom2/filter/NegateFilter;->filter:Lorg/jdom2/filter/Filter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public filter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "content"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/jdom2/filter/NegateFilter;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom2/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    return-object p1
.end method

.method getBaseFilter()Lorg/jdom2/filter/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/filter/Filter<",
            "*>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/jdom2/filter/NegateFilter;->filter:Lorg/jdom2/filter/Filter;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jdom2/filter/NegateFilter;->filter:Lorg/jdom2/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[NegateFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/NegateFilter;->filter:Lorg/jdom2/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
