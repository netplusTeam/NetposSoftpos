.class Ljavassist/bytecode/AnnotationsAttribute$Renamer;
.super Ljavassist/bytecode/AnnotationsAttribute$Walker;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/AnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Renamer"
.end annotation


# instance fields
.field classnames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cpool:Ljavassist/bytecode/ConstPool;


# direct methods
.method constructor <init>([BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 0
    .param p1, "info"    # [B
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

    .line 494
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;-><init>([B)V

    .line 495
    iput-object p2, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 496
    iput-object p3, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->classnames:Ljava/util/Map;

    .line 497
    return-void
.end method

.method private renameType(II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "index"    # I

    .line 520
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->classnames:Ljava/util/Map;

    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    .line 524
    .local v2, "index2":I
    iget-object v3, p0, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->info:[B

    invoke-static {v2, v3, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 526
    .end local v2    # "index2":I
    :cond_0
    return-void
.end method


# virtual methods
.method annotation(III)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "type"    # I
    .param p3, "numPairs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 501
    add-int/lit8 v0, p1, -0x4

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->renameType(II)V

    .line 502
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(III)I

    move-result v0

    return v0
.end method

.method classMemberValue(II)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 515
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->renameType(II)V

    .line 516
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->classMemberValue(II)V

    .line 517
    return-void
.end method

.method enumMemberValue(III)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "typeNameIndex"    # I
    .param p3, "constNameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 509
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Renamer;->renameType(II)V

    .line 510
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->enumMemberValue(III)V

    .line 511
    return-void
.end method
