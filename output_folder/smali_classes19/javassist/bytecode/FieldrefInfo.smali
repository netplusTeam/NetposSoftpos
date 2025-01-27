.class Ljavassist/bytecode/FieldrefInfo;
.super Ljavassist/bytecode/MemberrefInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x9


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "cindex"    # I
    .param p2, "ntindex"    # I
    .param p3, "thisIndex"    # I

    .line 1799
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/MemberrefInfo;-><init>(III)V

    .line 1800
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/DataInputStream;
    .param p2, "thisIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1805
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/MemberrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1806
    return-void
.end method


# virtual methods
.method protected copy2(Ljavassist/bytecode/ConstPool;II)I
    .locals 1
    .param p1, "dest"    # Ljavassist/bytecode/ConstPool;
    .param p2, "cindex"    # I
    .param p3, "ntindex"    # I

    .line 1817
    invoke-virtual {p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(II)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 1809
    const/16 v0, 0x9

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 1812
    const-string v0, "Field"

    return-object v0
.end method
