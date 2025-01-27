.class public Ljavassist/bytecode/stackmap/TypeData$NullType;
.super Ljavassist/bytecode/stackmap/TypeData$ClassName;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 910
    const-string v0, "null-type"

    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    .line 911
    return-void
.end method


# virtual methods
.method public getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;
    .locals 0
    .param p1, "dim"    # I

    .line 924
    return-object p0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeTag()I
    .locals 1

    .line 915
    const/4 v0, 0x5

    return v0
.end method

.method public isNullType()Z
    .locals 1

    .line 919
    const/4 v0, 0x1

    return v0
.end method
