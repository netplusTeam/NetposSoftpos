.class public Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedBidiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedBidiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x290a0955b114fL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
            "TK;TV;>.Inverse;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient modifications:I

.field private transient nodeCount:I

.field private transient rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient valuesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    .line 107
    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modifications:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 121
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

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;-><init>()V

    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->putAll(Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method static synthetic access$1500(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 80
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modifications:I

    return v0
.end method

.method static synthetic access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 80
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 80
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    return v0
.end method

.method static synthetic access$2800(Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .line 80
    invoke-static {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookup(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # Ljava/lang/Comparable;

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doHashCode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doToString(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .line 1255
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1256
    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 1281
    invoke-static {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 1282
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 1283
    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1238
    if-eqz p0, :cond_1

    .line 1241
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    .line 1244
    return-void

    .line 1242
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 1267
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1268
    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;)I"
        }
    .end annotation

    .line 694
    .local p0, "o1":Ljava/lang/Comparable;, "TT;"
    .local p1, "o2":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p3, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 744
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "from":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p2, "to":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-eqz p2, :cond_1

    .line 745
    if-nez p1, :cond_0

    .line 747
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_0

    .line 749
    :cond_0
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 752
    :cond_1
    :goto_0
    return-void
.end method

.method private doEquals(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1361
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1362
    return v0

    .line 1364
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1365
    return v2

    .line 1367
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 1368
    .local v1, "other":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1369
    return v2

    .line 1372
    :cond_2
    iget v3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-lez v3, :cond_5

    .line 1374
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getMapIterator(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v3

    .local v3, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<**>;"
    :goto_0
    invoke-interface {v3}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1375
    invoke-interface {v3}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1376
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v3}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1377
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_3

    .line 1378
    return v2

    .line 1380
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 1385
    .end local v3    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<**>;"
    :cond_4
    goto :goto_1

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, "ex":Ljava/lang/NullPointerException;
    return v2

    .line 1381
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1382
    .local v0, "ex":Ljava/lang/ClassCastException;
    return v2

    .line 1387
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :cond_5
    :goto_1
    return v0
.end method

.method private doHashCode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I
    .locals 6
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1398
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1399
    .local v0, "total":I
    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-lez v1, :cond_0

    .line 1400
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getMapIterator(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<**>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1401
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1402
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1403
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1404
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 1406
    .end local v1    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<**>;"
    :cond_0
    return v0
.end method

.method private doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    .local p2, "value":Ljava/lang/Comparable;, "TV;"
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    .line 509
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    .line 511
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 512
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 514
    new-instance v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 515
    .local v1, "root":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v3, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v3

    aput-object v1, v2, v3

    .line 516
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v3, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v3

    aput-object v1, v2, v3

    .line 517
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->grow()V

    .line 519
    .end local v1    # "root":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    goto :goto_2

    .line 522
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    .line 524
    .local v1, "cmp":I
    if-eqz v1, :cond_4

    .line 527
    if-gez v1, :cond_2

    .line 528
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 529
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 531
    :cond_1
    new-instance v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 533
    .local v2, "newNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-direct {p0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 534
    sget-object v3, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 535
    sget-object v3, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v2, v0, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 536
    sget-object v3, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 537
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->grow()V

    .line 539
    goto :goto_2

    .line 542
    .end local v2    # "newNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :cond_2
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 543
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 556
    .end local v1    # "cmp":I
    :goto_1
    goto :goto_0

    .line 545
    .restart local v1    # "cmp":I
    :cond_3
    new-instance v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 547
    .restart local v2    # "newNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-direct {p0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 548
    sget-object v3, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 549
    sget-object v3, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v2, v0, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 550
    sget-object v3, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 551
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->grow()V

    .line 553
    nop

    .line 558
    .end local v1    # "cmp":I
    .end local v2    # "newNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_2
    return-void

    .line 526
    .restart local v1    # "cmp":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot store a duplicate key (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\") in this Map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 986
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "deletedNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->values()[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 989
    .local v3, "dataElement":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 990
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    invoke-direct {p0, v4, p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->swapPosition(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 993
    :cond_0
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 994
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    .line 996
    .local v4, "replacement":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 997
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 999
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1000
    iget-object v6, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v7

    aput-object v4, v6, v7

    goto :goto_2

    .line 1001
    :cond_2
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-ne p1, v6, :cond_3

    .line 1002
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_2

    .line 1004
    :cond_3
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1007
    :goto_2
    invoke-static {p1, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1008
    invoke-static {p1, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1009
    invoke-static {p1, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1011
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1012
    invoke-direct {p0, v4, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_4

    .line 1017
    :cond_4
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1020
    iget-object v6, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v7

    aput-object v5, v6, v7

    goto :goto_4

    .line 1024
    :cond_5
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1025
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1028
    :cond_6
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1029
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-ne p1, v6, :cond_7

    .line 1030
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_3

    .line 1032
    :cond_7
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1035
    :goto_3
    invoke-static {p1, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 986
    .end local v3    # "dataElement":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .end local v4    # "replacement":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1040
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->shrink()V

    .line 1041
    return-void
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 4
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 1053
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "replacementNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    move-object v0, p1

    .line 1055
    .local v0, "currentNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eq v0, v1, :cond_7

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1056
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1057
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1059
    .local v1, "siblingNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1060
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1061
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1062
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1064
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1067
    :cond_0
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1068
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1071
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 1073
    :cond_1
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1074
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1075
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1076
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1078
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1081
    :cond_2
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1082
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1083
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1084
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1086
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v3

    aget-object v0, v2, v3

    .line 1088
    .end local v1    # "siblingNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_1
    goto/16 :goto_0

    .line 1089
    :cond_3
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1091
    .restart local v1    # "siblingNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1092
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1093
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1094
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1096
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1099
    :cond_4
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1100
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1101
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1103
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_2

    .line 1105
    :cond_5
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1106
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1107
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1108
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1110
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1113
    :cond_6
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1114
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1115
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1116
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1118
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v3

    aget-object v0, v2, v3

    .line 1120
    .end local v1    # "siblingNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_2
    goto/16 :goto_0

    .line 1123
    :cond_7
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1124
    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 3
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 917
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "insertedNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    move-object v0, p1

    .line 918
    .local v0, "currentNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 920
    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 921
    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eq v0, v1, :cond_7

    .line 922
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 923
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 924
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 926
    .local v1, "y":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 928
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 929
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 931
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 934
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 937
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 940
    :cond_1
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 941
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 943
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 944
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 947
    .end local v1    # "y":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 950
    :cond_3
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 952
    .restart local v1    # "y":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 953
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 954
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 955
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 957
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_2

    .line 960
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 961
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 963
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 966
    :cond_5
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 967
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 969
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 970
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 973
    .end local v1    # "y":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 976
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 977
    return-void
.end method

.method private doRemoveKey(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 561
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 562
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 563
    const/4 v1, 0x0

    return-object v1

    .line 565
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 566
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    return-object v1
.end method

.method private doRemoveValue(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 571
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 572
    const/4 v1, 0x0

    return-object v1

    .line 574
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 575
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    return-object v1
.end method

.method private doToString(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;
    .locals 8
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1417
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    .line 1418
    const-string/jumbo v0, "{}"

    return-object v0

    .line 1420
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v1

    .line 1421
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1422
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getMapIterator(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 1423
    .local v1, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<**>;"
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    .line 1424
    .local v2, "hasNext":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1425
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1426
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1427
    .local v4, "value":Ljava/lang/Object;
    const-string v5, "(this Map)"

    if-ne v3, p0, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    .line 1428
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v4, p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 1429
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1431
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v2

    .line 1432
    if-eqz v2, :cond_3

    .line 1433
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 1437
    :cond_4
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 813
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method private getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 849
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getMapIterator(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/MapIterator;
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/MapIterator<",
            "**>;"
        }
    .end annotation

    .line 1442
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$1;->$SwitchMap$org$apache$commons$collections4$bidimap$TreeBidiMap$DataElement:[I

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1446
    :pswitch_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object v0

    .line 1444
    :pswitch_1
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 825
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 837
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private greatestNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 2
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 725
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    move-object v0, p1

    .line 726
    .local v0, "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 727
    :goto_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 728
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 731
    :cond_0
    return-object v0
.end method

.method private grow()V
    .locals 1

    .line 1298
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modify()V

    .line 1299
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    .line 1300
    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1319
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "newNode":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 1322
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    .line 1324
    .local v1, "cmp":I
    if-eqz v1, :cond_3

    .line 1327
    if-gez v1, :cond_1

    .line 1328
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1329
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_1

    .line 1331
    :cond_0
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1332
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1333
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1335
    goto :goto_2

    .line 1338
    :cond_1
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1339
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1348
    .end local v1    # "cmp":I
    :goto_1
    goto :goto_0

    .line 1341
    .restart local v1    # "cmp":I
    :cond_2
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1342
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1343
    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1345
    nop

    .line 1349
    .end local v1    # "cmp":I
    :goto_2
    return-void

    .line 1325
    .restart local v1    # "cmp":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot store a duplicate value (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1326
    invoke-static {p1, v4}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\") in this Map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "**>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")Z"
        }
    .end annotation

    .line 775
    .local p0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<**>;"
    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "**>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")Z"
        }
    .end annotation

    .line 763
    .local p0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<**>;"
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private leastNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 2
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 707
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    move-object v0, p1

    .line 708
    .local v0, "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 709
    :goto_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 710
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 713
    :cond_0
    return-object v0
.end method

.method private lookup(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Object;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 590
    .local v0, "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    .line 592
    .local v1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 593
    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    .line 594
    .local v2, "cmp":I
    if-nez v2, :cond_0

    .line 595
    move-object v0, v1

    .line 596
    goto :goto_2

    .line 598
    :cond_0
    if-gez v2, :cond_1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 599
    .end local v2    # "cmp":I
    goto :goto_0

    .line 601
    :cond_2
    :goto_2
    return-object v0
.end method

.method private lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 605
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookup(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method private lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 609
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookup(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method private static makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "**>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 799
    .local p0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<**>;"
    if-eqz p0, :cond_0

    .line 800
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 802
    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "**>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 786
    .local p0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<**>;"
    if-eqz p0, :cond_0

    .line 787
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 789
    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .line 1291
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modifications:I

    .line 1292
    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 3
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 622
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez p1, :cond_0

    .line 623
    const/4 v0, 0x0

    .local v0, "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    goto :goto_1

    .line 624
    .end local v0    # "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 627
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .restart local v0    # "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    goto :goto_1

    .line 635
    .end local v0    # "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 636
    .local v0, "parent":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    move-object v1, p1

    .line 638
    .local v1, "child":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 639
    move-object v1, v0

    .line 640
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 642
    :cond_2
    move-object v2, v0

    .line 644
    .end local v1    # "child":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local v0, "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_1
    return-object v0
.end method

.method private nextSmaller(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 3
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez p1, :cond_0

    .line 658
    const/4 v0, 0x0

    .local v0, "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    goto :goto_1

    .line 659
    .end local v0    # "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 662
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .restart local v0    # "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    goto :goto_1

    .line 670
    .end local v0    # "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 671
    .local v0, "parent":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    move-object v1, p1

    .line 673
    .local v1, "child":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 674
    move-object v1, v0

    .line 675
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 677
    :cond_2
    move-object v2, v0

    .line 679
    .end local v1    # "child":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local v0, "rval":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    :goto_1
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1461
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1462
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1463
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1464
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1465
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 1466
    .local v2, "k":Ljava/lang/Comparable;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 1467
    .local v3, "v":Ljava/lang/Comparable;, "TV;"
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 1464
    .end local v2    # "k":Ljava/lang/Comparable;, "TK;"
    .end local v3    # "v":Ljava/lang/Comparable;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1469
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 3
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 860
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 861
    .local v0, "rightChild":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 863
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 864
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 866
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 868
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 870
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    goto :goto_0

    .line 871
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 872
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_0

    .line 874
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 877
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 878
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 879
    return-void
.end method

.method private rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 3
    .param p2, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 889
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 890
    .local v0, "leftChild":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 891
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 892
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 894
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 896
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 898
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    goto :goto_0

    .line 899
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 900
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_0

    .line 902
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 905
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 906
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 907
    return-void
.end method

.method private shrink()V
    .locals 1

    .line 1306
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modify()V

    .line 1307
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    .line 1308
    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 10
    .param p3, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 1137
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "x":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p2, "y":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1138
    .local v0, "xFormerParent":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1139
    .local v1, "xFormerLeftChild":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    .line 1140
    .local v2, "xFormerRightChild":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1141
    .local v3, "yFormerParent":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    .line 1142
    .local v4, "yFormerLeftChild":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v5

    .line 1143
    .local v5, "yFormerRightChild":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    nop

    .line 1144
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-ne p1, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 1145
    .local v6, "xWasLeftChild":Z
    :goto_0
    nop

    .line 1146
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v9

    invoke-static {v9, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v9

    if-ne p2, v9, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    .line 1149
    .local v7, "yWasLeftChild":Z
    :goto_1
    if-ne p1, v3, :cond_3

    .line 1150
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1152
    if-eqz v7, :cond_2

    .line 1153
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1154
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_3

    .line 1156
    :cond_2
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1157
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_3

    .line 1160
    :cond_3
    invoke-static {p1, v3, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1162
    if-eqz v3, :cond_5

    .line 1163
    if-eqz v7, :cond_4

    .line 1164
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_2

    .line 1166
    :cond_4
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1170
    :cond_5
    :goto_2
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1171
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1174
    :goto_3
    if-ne p2, v0, :cond_7

    .line 1175
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1177
    if-eqz v6, :cond_6

    .line 1178
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1179
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_5

    .line 1181
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1182
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_5

    .line 1185
    :cond_7
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1187
    if-eqz v0, :cond_9

    .line 1188
    if-eqz v6, :cond_8

    .line 1189
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_4

    .line 1191
    :cond_8
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1195
    :cond_9
    :goto_4
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1196
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1200
    :goto_5
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1201
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1204
    :cond_a
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1205
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1208
    :cond_b
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1209
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1212
    :cond_c
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1213
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1216
    :cond_d
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1219
    iget-object v8, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    if-ne v8, p1, :cond_e

    .line 1220
    iget-object v8, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v9

    aput-object p2, v8, v9

    goto :goto_6

    .line 1221
    :cond_e
    iget-object v8, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    if-ne v8, p2, :cond_f

    .line 1222
    iget-object v8, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v9

    aput-object p1, v8, v9

    .line 1224
    :cond_f
    :goto_6
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1478
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1479
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1480
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1481
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1482
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1483
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 1484
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 274
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modify()V

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    .line 277
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 278
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aput-object v2, v0, v1

    .line 279
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 185
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 436
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    .line 439
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 474
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    return v0
.end method

.method public firstKey()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 327
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->firstKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 204
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 205
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 297
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 298
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 484
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doHashCode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 459
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lastKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->emptyOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0

    .line 448
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 357
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 358
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public previousKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 372
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 373
    .local v0, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->previousKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    .local p2, "value":Ljava/lang/Comparable;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 235
    .local v0, "result":Ljava/lang/Comparable;, "TV;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 236
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 249
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 250
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->remove(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 314
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 494
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doToString(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    return-object v0
.end method
