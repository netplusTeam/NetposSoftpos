.class public abstract Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;
.super Lcom/github/devnied/emvnfccard/model/AbstractData;
.source "AbstractByteBean.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/parser/apdu/IFile;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/devnied/emvnfccard/model/AbstractData;",
        "Lcom/github/devnied/emvnfccard/parser/apdu/IFile;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = -0x1bfa6943bc48aa4fL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;, "Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean<TT;>;"
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/model/AbstractData;-><init>()V

    return-void
.end method

.method private getAnnotationSet(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;",
            ">;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;, "Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean<TT;>;"
    .local p1, "pTags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    if-eqz p1, :cond_2

    .line 61
    invoke-static {}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->getInstance()Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 62
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Lcom/github/devnied/emvnfccard/iso7816emv/ITag;Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 63
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;

    .line 64
    .local v3, "tal":Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;
    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    .line 65
    .local v4, "ann":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getLength()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->setSize(I)V

    goto :goto_1

    .line 68
    :cond_0
    new-instance v5, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    invoke-direct {v5}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;-><init>()V

    move-object v4, v5

    .line 69
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->setSkip(Z)V

    .line 70
    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getLength()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->setSize(I)V

    .line 72
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v3    # "tal":Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;
    .end local v4    # "ann":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    goto :goto_0

    .line 74
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Lcom/github/devnied/emvnfccard/iso7816emv/ITag;Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    :cond_1
    goto :goto_2

    .line 75
    :cond_2
    invoke-static {}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->getInstance()Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationUtils;->getMapSet()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    .line 77
    :goto_2
    return-object v0
.end method


# virtual methods
.method public parse([BLjava/util/Collection;)V
    .locals 6
    .param p1, "pData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;, "Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean<TT;>;"
    .local p2, "pTags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    invoke-direct {p0, p2}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;->getAnnotationSet(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 90
    .local v0, "set":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    new-instance v1, Lfr/devnied/bitlib/BitUtils;

    invoke-direct {v1, p1}, Lfr/devnied/bitlib/BitUtils;-><init>([B)V

    .line 91
    .local v1, "bit":Lfr/devnied/bitlib/BitUtils;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    .line 94
    .local v3, "data":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->isSkip()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getSize()I

    move-result v4

    invoke-virtual {v1, v4}, Lfr/devnied/bitlib/BitUtils;->addCurrentBitIndex(I)V

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {v3, v1}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/DataFactory;->getObject(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;Lfr/devnied/bitlib/BitUtils;)Ljava/lang/Object;

    move-result-object v4

    .line 98
    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {p0, v5, p0, v4}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;->setField(Ljava/lang/reflect/Field;Lcom/github/devnied/emvnfccard/parser/apdu/IFile;Ljava/lang/Object;)V

    .line 100
    .end local v3    # "data":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method protected setField(Ljava/lang/reflect/Field;Lcom/github/devnied/emvnfccard/parser/apdu/IFile;Ljava/lang/Object;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "pData"    # Lcom/github/devnied/emvnfccard/parser/apdu/IFile;
    .param p3, "pValue"    # Ljava/lang/Object;

    .line 114
    .local p0, "this":Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;, "Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean<TT;>;"
    if-eqz p1, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;->LOGGER:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impossible to set the Field :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Parameters of fied.set are not valid"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 123
    :cond_0
    :goto_1
    return-void
.end method
