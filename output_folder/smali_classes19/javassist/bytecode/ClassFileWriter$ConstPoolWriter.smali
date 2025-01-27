.class public final Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConstPoolWriter"
.end annotation


# instance fields
.field protected num:I

.field output:Ljavassist/bytecode/ByteStream;

.field protected startPos:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/ByteStream;)V
    .locals 2
    .param p1, "out"    # Ljavassist/bytecode/ByteStream;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    .line 535
    invoke-virtual {p1}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->startPos:I

    .line 536
    const/4 v0, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    .line 537
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 538
    return-void
.end method


# virtual methods
.method public addClassInfo(I)I
    .locals 2
    .param p1, "name"    # I

    .line 578
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 579
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 580
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addClassInfo(Ljava/lang/String;)I
    .locals 3
    .param p1, "jvmname"    # Ljava/lang/String;

    .line 565
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    .line 566
    .local v0, "utf8":I
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 567
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 568
    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v1
.end method

.method public addClassInfo([Ljava/lang/String;)[I
    .locals 4
    .param p1, "classNames"    # [Ljava/lang/String;

    .line 546
    array-length v0, p1

    .line 547
    .local v0, "n":I
    new-array v1, v0, [I

    .line 548
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 549
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addClassInfo(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public addDoubleInfo(D)I
    .locals 2
    .param p1, "d"    # D

    .line 782
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 783
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ByteStream;->writeDouble(D)V

    .line 784
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    .line 785
    .local v0, "n":I
    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    .line 786
    return v0
.end method

.method public addDynamicInfo(II)I
    .locals 2
    .param p1, "bootstrap"    # I
    .param p2, "nameAndTypeInfo"    # I

    .line 715
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 716
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 717
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 718
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addFieldrefInfo(II)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "nameAndTypeInfo"    # I

    .line 616
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 617
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 618
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 619
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addFloatInfo(F)I
    .locals 2
    .param p1, "f"    # F

    .line 756
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 757
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeFloat(F)V

    .line 758
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addIntegerInfo(I)I
    .locals 2
    .param p1, "i"    # I

    .line 744
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 745
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 746
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addInterfaceMethodrefInfo(II)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "nameAndTypeInfo"    # I

    .line 646
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 647
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 648
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 649
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addInvokeDynamicInfo(II)I
    .locals 2
    .param p1, "bootstrap"    # I
    .param p2, "nameAndTypeInfo"    # I

    .line 697
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 698
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 699
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 700
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addLongInfo(J)I
    .locals 2
    .param p1, "l"    # J

    .line 768
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 769
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ByteStream;->writeLong(J)V

    .line 770
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    .line 771
    .local v0, "n":I
    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    .line 772
    return v0
.end method

.method public addMethodHandleInfo(II)I
    .locals 2
    .param p1, "kind"    # I
    .param p2, "index"    # I

    .line 664
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 665
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 666
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 667
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addMethodTypeInfo(I)I
    .locals 2
    .param p1, "desc"    # I

    .line 680
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 681
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 682
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addMethodrefInfo(II)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "nameAndTypeInfo"    # I

    .line 630
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 631
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 632
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 633
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addNameAndTypeInfo(II)I
    .locals 2
    .param p1, "name"    # I
    .param p2, "type"    # I

    .line 602
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 603
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 604
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 605
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method public addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 591
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addNameAndTypeInfo(II)I

    move-result v0

    return v0
.end method

.method public addStringInfo(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 731
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    .line 732
    .local v0, "utf8":I
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 733
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 734
    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v1
.end method

.method public addUtf8Info(Ljava/lang/String;)I
    .locals 2
    .param p1, "utf8"    # Ljava/lang/String;

    .line 796
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 797
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeUTF(Ljava/lang/String;)V

    .line 798
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return v0
.end method

.method end()V
    .locals 3

    .line 805
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->startPos:I

    iget v2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(II)V

    .line 806
    return-void
.end method
