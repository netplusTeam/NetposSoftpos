.class public Lcom/payneteasy/tlv/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;


# instance fields
.field protected final theList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;"
        }
    .end annotation
.end field

.field private final theTag:Lcom/payneteasy/tlv/BerTag;

.field private final theValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/payneteasy/tlv/BerTlv;->ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/payneteasy/tlv/BerTag;Ljava/util/List;)V
    .locals 1
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payneteasy/tlv/BerTag;",
            "Ljava/util/List<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p2, "aList":Ljava/util/List;, "Ljava/util/List<Lcom/payneteasy/tlv/BerTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    .line 27
    iput-object p2, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/payneteasy/tlv/BerTag;[B)V
    .locals 1
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aValue"    # [B

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    .line 39
    iput-object p2, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 148
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 150
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/payneteasy/tlv/BerTlv;

    .line 152
    .local v2, "berTlv":Lcom/payneteasy/tlv/BerTlv;
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    invoke-virtual {v3, v4}, Lcom/payneteasy/tlv/BerTag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 153
    :cond_3
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    iget-object v4, v2, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 154
    :cond_4
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v0, v2, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    .line 148
    .end local v2    # "berTlv":Lcom/payneteasy/tlv/BerTlv;
    :cond_7
    :goto_2
    return v1
.end method

.method public find(Lcom/payneteasy/tlv/BerTag;)Lcom/payneteasy/tlv/BerTlv;
    .locals 4
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;

    .line 68
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->getTag()Lcom/payneteasy/tlv/BerTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payneteasy/tlv/BerTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->isConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payneteasy/tlv/BerTlv;

    .line 74
    .local v2, "tlv":Lcom/payneteasy/tlv/BerTlv;
    invoke-virtual {v2, p1}, Lcom/payneteasy/tlv/BerTlv;->find(Lcom/payneteasy/tlv/BerTag;)Lcom/payneteasy/tlv/BerTlv;

    move-result-object v3

    .line 75
    .local v3, "ret":Lcom/payneteasy/tlv/BerTlv;
    if-eqz v3, :cond_1

    .line 76
    return-object v3

    .line 78
    .end local v2    # "tlv":Lcom/payneteasy/tlv/BerTlv;
    .end local v3    # "ret":Lcom/payneteasy/tlv/BerTlv;
    :cond_1
    goto :goto_0

    .line 79
    :cond_2
    return-object v1

    .line 81
    :cond_3
    return-object v1
.end method

.method public findAll(Lcom/payneteasy/tlv/BerTag;)Ljava/util/List;
    .locals 4
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payneteasy/tlv/BerTag;",
            ")",
            "Ljava/util/List<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/payneteasy/tlv/BerTlv;>;"
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->getTag()Lcom/payneteasy/tlv/BerTag;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/payneteasy/tlv/BerTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payneteasy/tlv/BerTlv;

    .line 91
    .local v2, "tlv":Lcom/payneteasy/tlv/BerTlv;
    invoke-virtual {v2, p1}, Lcom/payneteasy/tlv/BerTlv;->findAll(Lcom/payneteasy/tlv/BerTag;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    .end local v2    # "tlv":Lcom/payneteasy/tlv/BerTlv;
    goto :goto_0

    .line 94
    :cond_1
    return-object v0
.end method

.method public getBytesValue()[B
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TLV ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]is constructed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHexValue()Ljava/lang/String;
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    invoke-static {v0}, Lcom/payneteasy/tlv/HexUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag is CONSTRUCTED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    iget-object v2, v2, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    invoke-static {v2}, Lcom/payneteasy/tlv/HexUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntValue()I
    .locals 5

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "i":I
    const/4 v1, 0x0

    .line 131
    .local v1, "j":I
    const/4 v2, 0x0

    .line 133
    .local v2, "number":I
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 134
    aget-byte v1, v3, v0

    .line 135
    mul-int/lit16 v3, v2, 0x100

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x100

    :cond_0
    add-int v2, v3, v1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return v2
.end method

.method public getTag()Lcom/payneteasy/tlv/BerTag;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    return-object v0
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 1

    .line 111
    sget-object v0, Lcom/payneteasy/tlv/BerTlv;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/payneteasy/tlv/BerTlv;->getTextValue(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextValue(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "aCharset"    # Ljava/nio/charset/Charset;

    .line 115
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TLV is constructed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag is PRIMITIVE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payneteasy/tlv/BerTag;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 160
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 161
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 162
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isConstructed()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    invoke-virtual {v0}, Lcom/payneteasy/tlv/BerTag;->isConstructed()Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    invoke-virtual {v0}, Lcom/payneteasy/tlv/BerTag;->isConstructed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTag(Lcom/payneteasy/tlv/BerTag;)Z
    .locals 1
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;

    .line 60
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    invoke-virtual {v0, p1}, Lcom/payneteasy/tlv/BerTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BerTlv{theTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlv;->theTag:Lcom/payneteasy/tlv/BerTag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", theValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlv;->theValue:[B

    .line 170
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", theList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    return-object v0
.end method
