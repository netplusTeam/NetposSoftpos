.class Lorg/apache/commons/lang/Entities$LookupEntityMap;
.super Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupEntityMap"
.end annotation


# static fields
.field private static final LOOKUP_TABLE_SIZE:I = 0x100


# instance fields
.field private lookupTable:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 537
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;-><init>()V

    return-void
.end method

.method private createLookupTable()V
    .locals 4

    .line 573
    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    .line 574
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 575
    iget-object v2, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    invoke-super {p0, v1}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private lookupTable()[Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;->createLookupTable()V

    .line 564
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public name(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 547
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 548
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 550
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
