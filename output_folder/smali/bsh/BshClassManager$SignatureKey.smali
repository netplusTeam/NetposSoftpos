.class Lbsh/BshClassManager$SignatureKey;
.super Ljava/lang/Object;
.source "BshClassManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/BshClassManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignatureKey"
.end annotation


# instance fields
.field clas:Ljava/lang/Class;

.field hashCode:I

.field methodName:Ljava/lang/String;

.field types:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "types"    # [Ljava/lang/Class;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    .line 627
    iput-object p1, p0, Lbsh/BshClassManager$SignatureKey;->clas:Ljava/lang/Class;

    .line 628
    iput-object p2, p0, Lbsh/BshClassManager$SignatureKey;->methodName:Ljava/lang/String;

    .line 629
    iput-object p3, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    .line 630
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 648
    move-object v0, p1

    check-cast v0, Lbsh/BshClassManager$SignatureKey;

    .line 649
    .local v0, "target":Lbsh/BshClassManager$SignatureKey;
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 650
    iget-object v1, v0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 651
    :cond_1
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->clas:Ljava/lang/Class;

    iget-object v4, v0, Lbsh/BshClassManager$SignatureKey;->clas:Ljava/lang/Class;

    if-eq v1, v4, :cond_2

    .line 652
    return v3

    .line 653
    :cond_2
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->methodName:Ljava/lang/String;

    iget-object v4, v0, Lbsh/BshClassManager$SignatureKey;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 654
    return v3

    .line 655
    :cond_3
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    array-length v1, v1

    iget-object v4, v0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    array-length v4, v4

    if-eq v1, v4, :cond_4

    .line 656
    return v3

    .line 657
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    array-length v5, v4

    if-ge v1, v5, :cond_7

    .line 659
    aget-object v4, v4, v1

    if-nez v4, :cond_5

    .line 661
    iget-object v4, v0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    aget-object v4, v4, v1

    if-eqz v4, :cond_6

    .line 662
    return v3

    .line 664
    :cond_5
    iget-object v5, v0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 665
    return v3

    .line 657
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 668
    .end local v1    # "i":I
    :cond_7
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 634
    iget v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    if-nez v0, :cond_2

    .line 636
    iget-object v0, p0, Lbsh/BshClassManager$SignatureKey;->clas:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->methodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    .line 637
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 638
    return v0

    .line 639
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lbsh/BshClassManager$SignatureKey;->types:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 640
    aget-object v1, v1, v0

    if-nez v1, :cond_1

    const/16 v1, 0x15

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 641
    .local v1, "hc":I
    :goto_1
    iget v2, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    iput v2, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    .line 639
    .end local v1    # "hc":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lbsh/BshClassManager$SignatureKey;->hashCode:I

    return v0
.end method
