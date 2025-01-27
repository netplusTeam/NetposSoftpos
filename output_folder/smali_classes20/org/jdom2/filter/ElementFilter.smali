.class public Lorg/jdom2/filter/ElementFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "ElementFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdom2/filter/AbstractFilter<",
        "Lorg/jdom2/Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private name:Ljava/lang/String;

.field private namespace:Lorg/jdom2/Namespace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .line 108
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Namespace;)V
    .locals 0
    .param p1, "namespace"    # Lorg/jdom2/Namespace;

    .line 98
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 152
    :cond_0
    instance-of v1, p1, Lorg/jdom2/filter/ElementFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 154
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/jdom2/filter/ElementFilter;

    .line 156
    .local v1, "filter":Lorg/jdom2/filter/ElementFilter;
    iget-object v3, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v1, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_0
    return v2

    .line 157
    :cond_3
    iget-object v3, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-eqz v3, :cond_4

    iget-object v4, v1, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v3, v4}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v1, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-eqz v3, :cond_5

    :goto_1
    return v2

    .line 159
    :cond_5
    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 66
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/ElementFilter;->filter(Ljava/lang/Object;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/lang/Object;)Lorg/jdom2/Element;
    .locals 4
    .param p1, "content"    # Ljava/lang/Object;

    .line 122
    instance-of v0, p1, Lorg/jdom2/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 123
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    .line 124
    .local v0, "el":Lorg/jdom2/Element;
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 125
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-nez v2, :cond_0

    .line 126
    return-object v0

    .line 128
    :cond_0
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1

    .line 130
    :cond_2
    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 131
    return-object v1

    .line 133
    :cond_3
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-nez v2, :cond_4

    .line 134
    return-object v0

    .line 136
    :cond_4
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v1, v0

    :cond_5
    return-object v1

    .line 138
    .end local v0    # "el":Lorg/jdom2/Element;
    :cond_6
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .line 166
    iget-object v0, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 167
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1d

    iget-object v3, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/jdom2/Namespace;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 168
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ElementFilter: Name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "*any*"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with Namespace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
