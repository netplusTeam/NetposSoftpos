.class Ljavassist/bytecode/Descriptor$PrettyPrinter;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/Descriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrettyPrinter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "pos"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 742
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 743
    .local v0, "c":C
    const/4 v1, 0x0

    .line 744
    .local v1, "arrayDim":I
    :goto_0
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    .line 745
    add-int/lit8 v1, v1, 0x1

    .line 746
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 749
    :cond_0
    const/16 v2, 0x4c

    if-ne v0, v2, :cond_3

    .line 751
    :goto_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 752
    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1

    .line 753
    goto :goto_2

    .line 755
    :cond_1
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    .line 756
    const/16 v0, 0x2e

    .line 758
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 761
    :cond_3
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toPrimitiveClass(C)Ljavassist/CtClass;

    move-result-object v2

    .line 762
    .local v2, "t":Ljavassist/CtClass;
    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    .end local v2    # "t":Ljavassist/CtClass;
    :goto_2
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "arrayDim":I
    .local v2, "arrayDim":I
    if-lez v1, :cond_4

    .line 766
    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_2

    .line 768
    :cond_4
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;

    .line 722
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 723
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 724
    const/4 v1, 0x1

    .line 725
    .local v1, "pos":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 726
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    .line 727
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 728
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 730
    :cond_0
    invoke-static {v0, v1, p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 734
    .end local v1    # "pos":I
    goto :goto_1

    .line 736
    :cond_2
    invoke-static {v0, v1, p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->readType(Ljava/lang/StringBuffer;ILjava/lang/String;)I

    .line 738
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
