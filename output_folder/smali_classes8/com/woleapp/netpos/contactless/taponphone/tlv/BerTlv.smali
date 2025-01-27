.class public Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;


# instance fields
.field protected final theList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;"
        }
    .end annotation
.end field

.field private final theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

.field private final theValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/util/List;)V
    .locals 1
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aTag",
            "aList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p2, "aList":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    .line 20
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theList:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theValue:[B

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[B)V
    .locals 1
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aTag",
            "aValue"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    .line 26
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theValue:[B

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theList:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public find(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .locals 4
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTag"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getTag()Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->isConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    .line 53
    .local v2, "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    invoke-virtual {v2, p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->find(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v3

    .line 54
    .local v3, "ret":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    if-eqz v3, :cond_1

    .line 55
    return-object v3

    .line 57
    .end local v2    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .end local v3    # "ret":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    :cond_1
    goto :goto_0

    .line 58
    :cond_2
    return-object v1

    .line 60
    :cond_3
    return-object v1
.end method

.method public findAll(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Ljava/util/List;
    .locals 4
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;",
            ")",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getTag()Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    .line 70
    .local v2, "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    invoke-virtual {v2, p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->findAll(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    .end local v2    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    goto :goto_0

    .line 73
    :cond_1
    return-object v0
.end method

.method public getBytesValue()[B
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theValue:[B

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TLV ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

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

    .line 77
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theValue:[B

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag is CONSTRUCTED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    iget-object v2, v2, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->bytes:[B

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->toHexString([B)Ljava/lang/String;

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

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "i":I
    const/4 v1, 0x0

    .line 103
    .local v1, "j":I
    const/4 v2, 0x0

    .line 105
    .local v2, "number":I
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theValue:[B

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 106
    aget-byte v1, v3, v0

    .line 107
    mul-int/lit16 v3, v2, 0x100

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x100

    :cond_0
    add-int v2, v3, v1

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return v2
.end method

.method public getTag()Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    return-object v0
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getTextValue(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextValue(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "aCharset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aCharset"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theValue:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 88
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
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theList:Ljava/util/List;

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag is PRIMITIVE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConstructed()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->isConstructed()Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->isConstructed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTag(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Z
    .locals 1
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTag"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BerTlv{theTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theTag:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", theValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theValue:[B

    .line 121
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", theList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method
