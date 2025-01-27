.class Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;
.super Ljavassist/bytecode/AnnotationsAttribute$Renamer;
.source "TypeAnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/TypeAnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Renamer"
.end annotation


# instance fields
.field sub:Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;


# direct methods
.method constructor <init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 1
    .param p1, "attrInfo"    # [B
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;-><init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 250
    new-instance v0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;

    invoke-direct {v0, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;-><init>([B)V

    iput-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;->sub:Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;

    .line 251
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

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 256
    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;->info:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    .line 257
    .local v1, "targetType":I
    iget-object v2, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;->sub:Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3, v1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->targetInfo(II)I

    move-result p1

    .line 258
    iget-object v2, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;->sub:Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;

    invoke-virtual {v2, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->typePath(I)I

    move-result p1

    .line 259
    invoke-virtual {p0, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute$Renamer;->annotation(I)I

    move-result p1

    .line 255
    .end local v1    # "targetType":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "i":I
    :cond_0
    return p1
.end method
