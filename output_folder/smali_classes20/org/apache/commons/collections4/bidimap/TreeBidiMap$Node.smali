.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections4/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/KeyValue<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blackColor:[Z

.field private calculatedHashCode:Z

.field private hashcodeValue:I

.field private final key:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1904
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    .local p2, "value":Ljava/lang/Comparable;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1905
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->key:Ljava/lang/Comparable;

    .line 1906
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->value:Ljava/lang/Comparable;

    .line 1907
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iput-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1908
    new-array v1, v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iput-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1909
    new-array v1, v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iput-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1910
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    .line 1911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    .line 1912
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->isLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->isRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->swapColors(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getData(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p2, "x2"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .param p1, "x1"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1884
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    return v0
.end method

.method private copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
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

    .line 2027
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    iget-object v2, p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v3

    aget-boolean v2, v2, v3

    aput-boolean v2, v0, v1

    .line 2028
    return-void
.end method

.method private getData(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1915
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$1;->$SwitchMap$org$apache$commons$collections4$bidimap$TreeBidiMap$DataElement:[I

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1921
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1919
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 1917
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1930
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1960
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1938
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1985
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method private isLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 2031
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 2032
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2031
    :goto_0
    return v0
.end method

.method private isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 1996
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 2
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 2036
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 2037
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2036
    :goto_0
    return v0
.end method

.method private setBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 3
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 2006
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 2007
    return-void
.end method

.method private setLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2
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

    .line 1926
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aput-object p1, v0, v1

    .line 1927
    return-void
.end method

.method private setParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2
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

    .line 1949
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aput-object p1, v0, v1

    .line 1950
    return-void
.end method

.method private setRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 3
    .param p1, "dataElement"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 2016
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 2017
    return-void
.end method

.method private setRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2
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

    .line 1934
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aput-object p1, v0, v1

    .line 1935
    return-void
.end method

.method private swapColors(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 5
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

    .line 1972
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p1, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-boolean v2, v0, v1

    iget-object v3, p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v4

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    aput-boolean v2, v0, v1

    .line 1973
    iget-object v0, p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-boolean v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v4

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    aput-boolean v2, v0, v1

    .line 1974
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v1

    aget-boolean v2, v0, v1

    iget-object v3, p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->blackColor:[Z

    invoke-virtual {p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->ordinal()I

    move-result v4

    aget-boolean v3, v3, v4

    xor-int/2addr v2, v3

    aput-boolean v2, v0, v1

    .line 1975
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2083
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 2084
    return v0

    .line 2086
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2087
    return v2

    .line 2089
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2090
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2048
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->key:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 1884
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2058
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->value:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1884
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2098
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    if-nez v0, :cond_0

    .line 2099
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->hashcodeValue:I

    .line 2100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    .line 2102
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->hashcodeValue:I

    return v0
.end method

.method public setValue(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2070
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    .local p1, "ignored":Ljava/lang/Comparable;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.Entry.setValue is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1884
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->setValue(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
