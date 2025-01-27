.class Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;
.super Ljavassist/bytecode/AnnotationsAttribute$Copier;
.source "TypeAnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/TypeAnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation


# instance fields
.field sub:Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;


# direct methods
.method constructor <init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 8
    .param p1, "attrInfo"    # [B
    .param p2, "src"    # Ljavassist/bytecode/ConstPool;
    .param p3, "dest"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljavassist/bytecode/ConstPool;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/AnnotationsAttribute$Copier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;Z)V

    .line 271
    new-instance v0, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;

    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->output:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1, p3}, Ljavassist/bytecode/annotation/TypeAnnotationsWriter;-><init>(Ljava/io/OutputStream;Ljavassist/bytecode/ConstPool;)V

    .line 272
    .local v0, "w":Ljavassist/bytecode/annotation/TypeAnnotationsWriter;
    iput-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    .line 273
    new-instance v1, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;-><init>([BLjavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljavassist/bytecode/annotation/TypeAnnotationsWriter;)V

    iput-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->sub:Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;

    .line 274
    return-void
.end method


# virtual methods
.method annotationArray(II)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->writer:Ljavassist/bytecode/annotation/AnnotationsWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/annotation/AnnotationsWriter;->numAnnotations(I)V

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 280
    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->info:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    .line 281
    .local v1, "targetType":I
    iget-object v2, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->sub:Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3, v1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->targetInfo(II)I

    move-result p1

    .line 282
    iget-object v2, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->sub:Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;

    invoke-virtual {v2, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubCopier;->typePath(I)I

    move-result p1

    .line 283
    invoke-virtual {p0, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute$Copier;->annotation(I)I

    move-result p1

    .line 279
    .end local v1    # "targetType":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_0
    return p1
.end method
