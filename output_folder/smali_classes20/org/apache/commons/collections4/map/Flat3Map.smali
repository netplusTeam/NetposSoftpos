.class public Lorg/apache/commons/collections4/map/Flat3Map;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Lorg/apache/commons/collections4/IterableMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/Flat3Map$ValuesIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$Values;,
        Lorg/apache/commons/collections4/map/Flat3Map$KeySetIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$KeySet;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntrySetIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;,
        Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/IterableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5cff0b811e8e7b68L


# instance fields
.field private transient delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hash1:I

.field private transient hash2:I

.field private transient hash3:I

.field private transient key1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient key2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient key3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient size:I

.field private transient value1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient value2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient value3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->putAll(Ljava/util/Map;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;

    .line 74
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/commons/collections4/map/Flat3Map;)Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/map/Flat3Map;

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-object v0
.end method

.method private convertToMap()V
    .locals 3

    .line 405
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    .line 406
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :pswitch_3
    nop

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 420
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 422
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 423
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1134
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1136
    .local v0, "count":I
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1137
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    .line 1139
    :cond_0
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 1140
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1142
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1117
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1118
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1119
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    .local v0, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<**>;"
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1121
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1123
    .end local v0    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<**>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 596
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clear()V

    .line 598
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    goto :goto_0

    .line 600
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 601
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 602
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 603
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 605
    :goto_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->clone()Lorg/apache/commons/collections4/map/Flat3Map;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/Flat3Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1155
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/Flat3Map;

    .line 1156
    .local v0, "cloned":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_0

    .line 1157
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :cond_0
    return-object v0

    .line 1160
    .end local v0    # "cloned":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 203
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 207
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 210
    return v0

    .line 213
    :cond_1
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 214
    return v0

    .line 217
    :cond_2
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 218
    return v0

    :cond_3
    :goto_0
    goto :goto_1

    .line 222
    :cond_4
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v1, :cond_7

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 224
    .local v1, "hashCode":I
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 226
    :pswitch_3
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    return v0

    .line 230
    :cond_5
    :pswitch_4
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    return v0

    .line 234
    :cond_6
    :pswitch_5
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 235
    return v0

    .line 240
    .end local v1    # "hashCode":I
    :cond_7
    :goto_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 251
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 254
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 255
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 258
    return v0

    .line 261
    :cond_1
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 262
    return v0

    .line 265
    :cond_2
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 266
    return v0

    :cond_3
    :goto_0
    goto :goto_1

    .line 270
    :cond_4
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 272
    :pswitch_3
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    return v0

    .line 276
    :cond_5
    :pswitch_4
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 277
    return v0

    .line 280
    :cond_6
    :pswitch_5
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 281
    return v0

    .line 285
    :cond_7
    :goto_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 749
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 752
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1173
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1174
    return v0

    .line 1176
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    .line 1177
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1179
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1180
    return v2

    .line 1182
    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 1183
    .local v1, "other":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1184
    return v2

    .line 1186
    :cond_3
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v3, :cond_c

    .line 1187
    const/4 v4, 0x0

    .line 1188
    .local v4, "otherValue":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 1190
    :pswitch_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1191
    return v2

    .line 1193
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1194
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1195
    :goto_0
    return v2

    .line 1198
    :cond_6
    :pswitch_1
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1199
    return v2

    .line 1201
    :cond_7
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1202
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1203
    :goto_1
    return v2

    .line 1206
    :cond_9
    :pswitch_2
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1207
    return v2

    .line 1209
    :cond_a
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1210
    .end local v4    # "otherValue":Ljava/lang/Object;
    .local v3, "otherValue":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v4, :cond_b

    if-eqz v3, :cond_c

    goto :goto_2

    :cond_b
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1211
    :goto_2
    return v2

    .line 1215
    .end local v3    # "otherValue":Ljava/lang/Object;
    :cond_c
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    if-nez p1, :cond_4

    .line 133
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object v0

    .line 140
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object v0

    .line 144
    :cond_2
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object v0

    :cond_3
    :goto_0
    goto :goto_1

    .line 149
    :cond_4
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v0, :cond_7

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 151
    .local v0, "hashCode":I
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 154
    :pswitch_3
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object v1

    .line 158
    :cond_5
    :pswitch_4
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object v1

    .line 162
    :cond_6
    :pswitch_5
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v1, v0, :cond_7

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 163
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object v1

    .line 168
    .end local v0    # "hashCode":I
    :cond_7
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .line 1225
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashCode()I

    move-result v0

    return v0

    .line 1228
    :cond_0
    const/4 v0, 0x0

    .line 1229
    .local v0, "total":I
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1239
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid map index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1231
    :pswitch_0
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1233
    :pswitch_1
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1235
    :pswitch_2
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1237
    :pswitch_3
    nop

    .line 1241
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .line 191
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 973
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 976
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$KeySet;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 621
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 624
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    .line 625
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->emptyMapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 627
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    if-nez p1, :cond_4

    .line 303
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 305
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 307
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 308
    return-object v0

    .line 311
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 313
    .restart local v0    # "old":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 314
    return-object v0

    .line 317
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_2
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 318
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 319
    .restart local v0    # "old":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 320
    return-object v0

    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_3
    :goto_0
    goto :goto_1

    .line 324
    :cond_4
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v0, :cond_7

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 326
    .local v0, "hashCode":I
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 328
    :pswitch_3
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 329
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 330
    .local v1, "old":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 331
    return-object v1

    .line 334
    .end local v1    # "old":Ljava/lang/Object;, "TV;"
    :cond_5
    :pswitch_4
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 335
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 336
    .restart local v1    # "old":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 337
    return-object v1

    .line 340
    .end local v1    # "old":Ljava/lang/Object;, "TV;"
    :cond_6
    :pswitch_5
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v1, v0, :cond_7

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 341
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 342
    .restart local v1    # "old":Ljava/lang/Object;, "TV;"
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 343
    return-object v1

    .line 350
    .end local v0    # "hashCode":I
    .end local v1    # "old":Ljava/lang/Object;, "TV;"
    :cond_7
    :goto_1
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_2

    .line 352
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->convertToMap()V

    .line 353
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-object v1

    .line 356
    :pswitch_6
    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 357
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 358
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 359
    goto :goto_5

    .line 361
    :pswitch_7
    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 362
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 363
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 364
    goto :goto_5

    .line 366
    :pswitch_8
    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 367
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 368
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 371
    :goto_5
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 372
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 383
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 384
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 385
    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 389
    return-void

    .line 391
    :cond_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 392
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 393
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections4/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    :cond_2
    goto :goto_1

    .line 396
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->convertToMap()V

    .line 397
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 399
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 447
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 450
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 451
    return-object v1

    .line 453
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez p1, :cond_8

    .line 454
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 456
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 458
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 459
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 460
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 461
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 462
    return-object v0

    .line 464
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 465
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 466
    .local v2, "old":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 467
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 469
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 470
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 471
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 472
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 473
    return-object v2

    .line 475
    .end local v2    # "old":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 476
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 477
    .restart local v2    # "old":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 478
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 480
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 481
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 482
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 483
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 484
    return-object v2

    .line 486
    .end local v2    # "old":Ljava/lang/Object;, "TV;"
    :cond_4
    return-object v1

    .line 488
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 489
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 490
    .restart local v0    # "old":Ljava/lang/Object;, "TV;"
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 491
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 492
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 493
    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 494
    return-object v0

    .line 496
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 497
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 498
    .local v3, "old":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 499
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 501
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 502
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 503
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 504
    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 505
    return-object v3

    .line 507
    .end local v3    # "old":Ljava/lang/Object;, "TV;"
    :cond_6
    return-object v1

    .line 509
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 510
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 511
    .restart local v0    # "old":Ljava/lang/Object;, "TV;"
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 512
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 513
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 514
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 515
    return-object v0

    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_7
    :goto_0
    goto/16 :goto_1

    .line 519
    :cond_8
    if-lez v0, :cond_e

    .line 520
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 521
    .local v0, "hashCode":I
    iget v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    .line 523
    :pswitch_3
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v2, v0, :cond_9

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 524
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 525
    .restart local v2    # "old":Ljava/lang/Object;, "TV;"
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 526
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 527
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 528
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 529
    return-object v2

    .line 531
    .end local v2    # "old":Ljava/lang/Object;, "TV;"
    :cond_9
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v0, :cond_a

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 532
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 533
    .restart local v2    # "old":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 534
    iget-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 535
    iget-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 536
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 537
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 538
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 539
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 540
    return-object v2

    .line 542
    .end local v2    # "old":Ljava/lang/Object;, "TV;"
    :cond_a
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_b

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 543
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 544
    .restart local v2    # "old":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 545
    iget-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 546
    iget-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 547
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 548
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 549
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 550
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 551
    return-object v2

    .line 553
    .end local v2    # "old":Ljava/lang/Object;, "TV;"
    :cond_b
    return-object v1

    .line 555
    :pswitch_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v3, v0, :cond_c

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 556
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 557
    .restart local v3    # "old":Ljava/lang/Object;, "TV;"
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 558
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 559
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 560
    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 561
    return-object v3

    .line 563
    .end local v3    # "old":Ljava/lang/Object;, "TV;"
    :cond_c
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v3, v0, :cond_d

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 564
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 565
    .restart local v3    # "old":Ljava/lang/Object;, "TV;"
    iget v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 566
    iget-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 567
    iget-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 568
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 569
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 570
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 571
    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 572
    return-object v3

    .line 574
    .end local v3    # "old":Ljava/lang/Object;, "TV;"
    :cond_d
    return-object v1

    .line 576
    :pswitch_5
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_e

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 577
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 578
    .restart local v2    # "old":Ljava/lang/Object;, "TV;"
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 579
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 580
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 581
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 582
    return-object v2

    .line 587
    .end local v0    # "hashCode":I
    .end local v2    # "old":Ljava/lang/Object;, "TV;"
    :cond_e
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .line 178
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    return v0

    .line 181
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1251
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1254
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    .line 1255
    const-string/jumbo v0, "{}"

    return-object v0

    .line 1257
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1258
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1259
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/16 v2, 0x2c

    const/16 v3, 0x3d

    const-string v4, "(this Map)"

    packed-switch v1, :pswitch_data_0

    .line 1277
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid map index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1261
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-ne v1, p0, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1263
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-ne v1, p0, :cond_3

    move-object v1, v4

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1266
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-ne v1, p0, :cond_4

    move-object v1, v4

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1268
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-ne v1, p0, :cond_5

    move-object v1, v4

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1271
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-ne v1, p0, :cond_6

    move-object v1, v4

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1273
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-ne v1, p0, :cond_7

    goto :goto_0

    :cond_7
    move-object v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1274
    nop

    .line 1279
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1049
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 1052
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$Values;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method
