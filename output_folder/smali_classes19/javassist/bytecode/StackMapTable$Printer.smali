.class Ljavassist/bytecode/StackMapTable$Printer;
.super Ljavassist/bytecode/StackMapTable$Walker;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Printer"
.end annotation


# instance fields
.field private offset:I

.field private writer:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>([BLjava/io/PrintWriter;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 739
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Walker;-><init>([B)V

    .line 740
    iput-object p2, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    .line 741
    const/4 v0, -0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 742
    return-void
.end method

.method public static print(Ljavassist/bytecode/StackMapTable;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "smt"    # Ljavassist/bytecode/StackMapTable;
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 731
    :try_start_0
    new-instance v0, Ljavassist/bytecode/StackMapTable$Printer;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable;->get()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavassist/bytecode/StackMapTable$Printer;-><init>([BLjava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$Printer;->parse()V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    invoke-virtual {v0}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    :goto_0
    return-void
.end method

.method private printTypeInfo(II)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "data"    # I

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "msg":Ljava/lang/String;
    const-string v1, ")"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 813
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninitialized (offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 810
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object (cpool_index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    goto :goto_0

    .line 807
    :pswitch_2
    const-string v0, "this"

    .line 808
    goto :goto_0

    .line 804
    :pswitch_3
    const-string v0, "null"

    .line 805
    goto :goto_0

    .line 801
    :pswitch_4
    const-string v0, "long"

    .line 802
    goto :goto_0

    .line 798
    :pswitch_5
    const-string v0, "double"

    .line 799
    goto :goto_0

    .line 795
    :pswitch_6
    const-string v0, "float"

    .line 796
    goto :goto_0

    .line 792
    :pswitch_7
    const-string v0, "integer"

    .line 793
    goto :goto_0

    .line 789
    :pswitch_8
    const-string v0, "top"

    .line 790
    nop

    .line 817
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public appendFrame(II[I[I)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "tags"    # [I
    .param p4, "data"    # [I

    .line 765
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 766
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " append frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 768
    aget v1, p3, v0

    aget v2, p4, v0

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/StackMapTable$Printer;->printTypeInfo(II)V

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public chopFrame(III)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "k"    # I

    .line 759
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 760
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chop frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " last locals"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public fullFrame(II[I[I[I[I)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "localTags"    # [I
    .param p4, "localData"    # [I
    .param p5, "stackTags"    # [I
    .param p6, "stackData"    # [I

    .line 774
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 775
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " full frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    const-string v1, "[locals]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 778
    aget v1, p3, v0

    aget v2, p4, v0

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/StackMapTable$Printer;->printTypeInfo(II)V

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    const-string v1, "[stack]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p5

    if-ge v0, v1, :cond_1

    .line 782
    aget v1, p5, v0

    aget v2, p6, v0

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/StackMapTable$Printer;->printTypeInfo(II)V

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 783
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public sameFrame(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I

    .line 746
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 747
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " same frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public sameLocals(IIII)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "stackTag"    # I
    .param p4, "stackData"    # I

    .line 752
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    .line 753
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Printer;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljavassist/bytecode/StackMapTable$Printer;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " same locals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    invoke-direct {p0, p3, p4}, Ljavassist/bytecode/StackMapTable$Printer;->printTypeInfo(II)V

    .line 755
    return-void
.end method
