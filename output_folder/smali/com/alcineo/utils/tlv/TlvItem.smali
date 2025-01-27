.class public final Lcom/alcineo/utils/tlv/TlvItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final acileon:Lcom/alcineo/utils/tlv/TlvTag;

.field private final aoleinc:Lcom/alcineo/utils/tlv/TlvLength;

.field private final enolcai:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end field

.field private final noaceli:[B


# direct methods
.method public static synthetic $r8$lambda$ZsJ15lhv-WOhI5jVqenDlH8XL6Q(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/alcineo/utils/tlv/TlvItem;->acileon(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/utils/tlv/TlvItem$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/utils/tlv/TlvItem$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/utils/tlv/TlvItem;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/utils/tlv/TlvTag;Lcom/alcineo/utils/tlv/TlvLength;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alcineo/utils/tlv/TlvItem;->enolcai:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/alcineo/utils/tlv/TlvItem;->acileon:Lcom/alcineo/utils/tlv/TlvTag;

    iput-object p2, p0, Lcom/alcineo/utils/tlv/TlvItem;->aoleinc:Lcom/alcineo/utils/tlv/TlvLength;

    iput-object p3, p0, Lcom/alcineo/utils/tlv/TlvItem;->noaceli:[B

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/utils/tlv/TlvTag;Lcom/alcineo/utils/tlv/TlvLength;[BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/utils/tlv/TlvTag;",
            "Lcom/alcineo/utils/tlv/TlvLength;",
            "[B",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/alcineo/utils/tlv/TlvItem;-><init>(Lcom/alcineo/utils/tlv/TlvTag;Lcom/alcineo/utils/tlv/TlvLength;[B)V

    iget-object p1, p0, Lcom/alcineo/utils/tlv/TlvItem;->enolcai:Ljava/util/LinkedList;

    invoke-virtual {p1, p4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic acileon(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)I
    .locals 1

    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes;->lexicographicalComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alcineo/utils/tlv/TlvItem;->getTag()Lcom/alcineo/utils/tlv/TlvTag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alcineo/utils/tlv/TlvTag;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getTag()Lcom/alcineo/utils/tlv/TlvTag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvTag;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public native equals(Lcom/alcineo/utils/tlv/TlvItem;)Z
.end method

.method public final native getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method

.method public final native getLength()Lcom/alcineo/utils/tlv/TlvLength;
.end method

.method public final native getTag()Lcom/alcineo/utils/tlv/TlvTag;
.end method

.method public final native getValue()[B
.end method

.method public final native getValueHex()Ljava/lang/String;
.end method

.method public final native getValueHex(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native toString()Ljava/lang/String;
.end method
