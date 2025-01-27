.class public abstract Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;
.super Ljava/lang/Object;
.source "AbstractKeyValue.java"

# interfaces
.implements Lorg/apache/commons/collections4/KeyValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/KeyValue<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;, "Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;, "Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;, "Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected setKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;, "Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    .line 58
    .local v0, "old":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    .line 59
    return-object v0
.end method

.method protected setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;, "Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    .line 74
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    .line 75
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;, "Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method
