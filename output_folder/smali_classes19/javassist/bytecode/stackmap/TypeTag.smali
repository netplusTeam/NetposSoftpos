.class public interface abstract Ljavassist/bytecode/stackmap/TypeTag;
.super Ljava/lang/Object;
.source "TypeTag.java"


# static fields
.field public static final DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

.field public static final FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

.field public static final INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

.field public static final LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

.field public static final TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

.field public static final TOP_TYPE:Ljava/lang/String; = "*top*"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$BasicType;

    const-string v1, "*top*"

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Ljavassist/bytecode/stackmap/TypeData$BasicType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    .line 24
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$BasicType;

    const-string v1, "int"

    const/4 v2, 0x1

    const/16 v3, 0x49

    invoke-direct {v0, v1, v2, v3}, Ljavassist/bytecode/stackmap/TypeData$BasicType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Ljavassist/bytecode/stackmap/TypeTag;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    .line 25
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$BasicType;

    const-string v1, "float"

    const/4 v2, 0x2

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Ljavassist/bytecode/stackmap/TypeData$BasicType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Ljavassist/bytecode/stackmap/TypeTag;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    .line 26
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$BasicType;

    const-string v1, "double"

    const/4 v2, 0x3

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Ljavassist/bytecode/stackmap/TypeData$BasicType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Ljavassist/bytecode/stackmap/TypeTag;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    .line 27
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$BasicType;

    const-string v1, "long"

    const/4 v2, 0x4

    const/16 v3, 0x4a

    invoke-direct {v0, v1, v2, v3}, Ljavassist/bytecode/stackmap/TypeData$BasicType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Ljavassist/bytecode/stackmap/TypeTag;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-void
.end method
