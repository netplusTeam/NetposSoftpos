.class public Lcom/alcineo/utils/tlv/TlvItemComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/utils/tlv/TlvItemComparator$b;,
        Lcom/alcineo/utils/tlv/TlvItemComparator$a;
    }
.end annotation


# instance fields
.field private acileon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/alcineo/utils/tlv/TlvTag;",
            "Lcom/alcineo/utils/tlv/TlvItemComparator$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alcineo/utils/tlv/TlvItemComparator;->acileon:Ljava/util/HashMap;

    return-void
.end method

.method private native acileon(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvItemComparator$b;
        }
    .end annotation
.end method

.method private native aoleinc(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvItemComparator$b;
        }
    .end annotation
.end method

.method private native enolcai(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvItemComparator$b;
        }
    .end annotation
.end method

.method private native noaceli(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvItemComparator$b;
        }
    .end annotation
.end method


# virtual methods
.method public native addIgnoredTag([BZ)V
.end method

.method public areEqual(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getTag()Lcom/alcineo/utils/tlv/TlvTag;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alcineo/utils/tlv/TlvItem;->getTag()Lcom/alcineo/utils/tlv/TlvTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alcineo/utils/tlv/TlvTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2}, Lcom/alcineo/utils/tlv/TlvItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alcineo/utils/tlv/TlvItemComparator;->acileon:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getTag()Lcom/alcineo/utils/tlv/TlvTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alcineo/utils/tlv/TlvItemComparator$a;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/alcineo/utils/tlv/TlvItemComparator$a;->acileon:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getValue()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2}, Lcom/alcineo/utils/tlv/TlvItem;->getValue()[B

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/alcineo/utils/tlv/TlvItemComparator$b;

    invoke-direct {p1}, Lcom/alcineo/utils/tlv/TlvItemComparator$b;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getValue()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/alcineo/utils/tlv/TlvItem;->getValue()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/alcineo/utils/tlv/TlvItemComparator$b;

    invoke-direct {p1}, Lcom/alcineo/utils/tlv/TlvItemComparator$b;-><init>()V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/alcineo/utils/tlv/TlvItem;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/alcineo/utils/tlv/TlvItem;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/alcineo/utils/tlv/TlvItem;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v1, p2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {p1, p2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move p2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_5

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alcineo/utils/tlv/TlvItem;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alcineo/utils/tlv/TlvItem;

    invoke-virtual {p0, v2, v3}, Lcom/alcineo/utils/tlv/TlvItemComparator;->areEqual(Lcom/alcineo/utils/tlv/TlvItem;Lcom/alcineo/utils/tlv/TlvItem;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/alcineo/utils/tlv/TlvItemComparator$b;

    invoke-direct {p1}, Lcom/alcineo/utils/tlv/TlvItemComparator$b;-><init>()V

    throw p1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    new-instance p1, Lcom/alcineo/utils/tlv/TlvItemComparator$b;

    invoke-direct {p1}, Lcom/alcineo/utils/tlv/TlvItemComparator$b;-><init>()V

    throw p1

    :cond_7
    new-instance p1, Lcom/alcineo/utils/tlv/TlvItemComparator$b;

    invoke-direct {p1}, Lcom/alcineo/utils/tlv/TlvItemComparator$b;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/alcineo/utils/tlv/TlvItemComparator$b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    return v0
.end method
