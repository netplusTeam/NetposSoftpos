.class public Ljavassist/bytecode/TypeAnnotationsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "TypeAnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;,
        Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;,
        Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;,
        Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;,
        Ljavassist/bytecode/TypeAnnotationsAttribute$TAWalker;
    }
.end annotation


# static fields
.field public static final invisibleTag:Ljava/lang/String; = "RuntimeInvisibleTypeAnnotations"

.field public static final visibleTag:Ljava/lang/String; = "RuntimeVisibleTypeAnnotations"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;
    .param p3, "info"    # [B

    .line 39
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 40
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    .line 63
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;

    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/TypeAnnotationsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2, p1, p2}, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 65
    .local v0, "copier":Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->annotationArray()V

    .line 66
    new-instance v1, Ljavassist/bytecode/TypeAnnotationsAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/TypeAnnotationsAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->close()[B

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Ljavassist/bytecode/TypeAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    return-void
.end method

.method public numAnnotations()I
    .locals 2

    .line 55
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute;->renameClass(Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;

    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute;->info:[B

    invoke-virtual {p0}, Ljavassist/bytecode/TypeAnnotationsAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;-><init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 88
    .local v0, "renamer":Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;->annotationArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 92
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
