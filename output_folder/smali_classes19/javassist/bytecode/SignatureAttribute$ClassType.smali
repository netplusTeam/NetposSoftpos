.class public Ljavassist/bytecode/SignatureAttribute$ClassType;
.super Ljavassist/bytecode/SignatureAttribute$ObjectType;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassType"
.end annotation


# static fields
.field public static OBJECT:Ljavassist/bytecode/SignatureAttribute$ClassType;


# instance fields
.field arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 692
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$ClassType;

    const-string v1, "java.lang.Object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/SignatureAttribute$ClassType;-><init>(Ljava/lang/String;[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V

    sput-object v0, Ljavassist/bytecode/SignatureAttribute$ClassType;->OBJECT:Ljavassist/bytecode/SignatureAttribute$ClassType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 713
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/SignatureAttribute$ClassType;-><init>(Ljava/lang/String;[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V

    .line 714
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V
    .locals 3
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "targs"    # [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    .line 684
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;-><init>()V

    .line 685
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    .line 686
    iput-object p4, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    .line 687
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "args"    # [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    .line 701
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;-><init>()V

    .line 702
    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    .line 703
    iput-object p2, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    .line 704
    return-void
.end method

.method static make(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "b"    # I
    .param p2, "e"    # I
    .param p3, "targs"    # [Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    .param p4, "parent"    # Ljavassist/bytecode/SignatureAttribute$ClassType;

    .line 679
    if-nez p4, :cond_0

    .line 680
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavassist/bytecode/SignatureAttribute$ClassType;-><init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V

    return-object v0

    .line 681
    :cond_0
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$NestedClassType;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljavassist/bytecode/SignatureAttribute$NestedClassType;-><init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)V

    return-object v0
.end method

.method private toString2(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 752
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    if-eqz v0, :cond_2

    .line 754
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 755
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    array-length v0, v0

    .line 756
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 757
    if-lez v1, :cond_0

    .line 758
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 766
    .end local v0    # "n":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method encode(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 786
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 787
    invoke-virtual {p0, p1}, Ljavassist/bytecode/SignatureAttribute$ClassType;->encode2(Ljava/lang/StringBuffer;)V

    .line 788
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 789
    return-void
.end method

.method encode2(Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 792
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v0

    .line 793
    .local v0, "parent":Ljavassist/bytecode/SignatureAttribute$ClassType;
    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0, p1}, Ljavassist/bytecode/SignatureAttribute$ClassType;->encode2(Ljava/lang/StringBuffer;)V

    .line 795
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 798
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    if-eqz v1, :cond_1

    .line 800
    invoke-static {p1, v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->encode(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V

    .line 801
    :cond_1
    return-void
.end method

.method public getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 1

    .line 736
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 720
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeArguments()[Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    .locals 1

    .line 728
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    return-object v0
.end method

.method public jvmTypeName()Ljava/lang/String;
    .locals 4

    .line 776
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 777
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v1

    .line 778
    .local v1, "parent":Ljavassist/bytecode/SignatureAttribute$ClassType;
    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$ClassType;->jvmTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 781
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->toString2(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 743
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 744
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v1

    .line 745
    .local v1, "parent":Ljavassist/bytecode/SignatureAttribute$ClassType;
    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$ClassType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 748
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->toString2(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
