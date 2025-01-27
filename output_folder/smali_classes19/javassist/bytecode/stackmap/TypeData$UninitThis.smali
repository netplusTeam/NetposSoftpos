.class public Ljavassist/bytecode/stackmap/TypeData$UninitThis;
.super Ljavassist/bytecode/stackmap/TypeData$UninitData;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninitThis"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 985
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/stackmap/TypeData$UninitData;-><init>(ILjava/lang/String;)V

    .line 986
    return-void
.end method


# virtual methods
.method public copy()Ljavassist/bytecode/stackmap/TypeData$UninitData;
    .locals 2

    .line 989
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$UninitThis;

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$UninitThis;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$UninitThis;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeTag()I
    .locals 1

    .line 993
    const/4 v0, 0x6

    return v0
.end method

.method toString2(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1002
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    const-string v0, "uninit:this"

    return-object v0
.end method
