.class public Lorg/jpos/iso/ISOVMsg;
.super Lorg/jpos/iso/ISOMsg;
.source "ISOVMsg.java"

# interfaces
.implements Lorg/jpos/iso/ISOVErrorList;


# static fields
.field private static final serialVersionUID:J = 0x6277d8afc0ab08dL


# instance fields
.field protected errors:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lorg/jpos/iso/ISOMsg;)V
    .locals 1
    .param p1, "Source"    # Lorg/jpos/iso/ISOMsg;

    .line 61
    invoke-direct {p0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/ISOVMsg;->errors:Ljava/util/LinkedList;

    .line 63
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOVMsg;->copyFromParent(Lorg/jpos/iso/ISOMsg;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOMsg;Lorg/jpos/iso/ISOVError;)V
    .locals 1
    .param p1, "Source"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "FirstError"    # Lorg/jpos/iso/ISOVError;

    .line 66
    invoke-direct {p0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/ISOVMsg;->errors:Ljava/util/LinkedList;

    .line 68
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOVMsg;->copyFromParent(Lorg/jpos/iso/ISOMsg;)V

    .line 69
    invoke-virtual {p0, p2}, Lorg/jpos/iso/ISOVMsg;->addISOVError(Lorg/jpos/iso/ISOVError;)Z

    .line 70
    return-void
.end method

.method private copyFromParent(Lorg/jpos/iso/ISOMsg;)V
    .locals 1
    .param p1, "Source"    # Lorg/jpos/iso/ISOMsg;

    .line 47
    iget-object v0, p1, Lorg/jpos/iso/ISOMsg;->packager:Lorg/jpos/iso/ISOPackager;

    iput-object v0, p0, Lorg/jpos/iso/ISOVMsg;->packager:Lorg/jpos/iso/ISOPackager;

    .line 48
    iget-object v0, p1, Lorg/jpos/iso/ISOMsg;->fields:Ljava/util/Map;

    iput-object v0, p0, Lorg/jpos/iso/ISOVMsg;->fields:Ljava/util/Map;

    .line 49
    iget-boolean v0, p1, Lorg/jpos/iso/ISOMsg;->dirty:Z

    iput-boolean v0, p0, Lorg/jpos/iso/ISOVMsg;->dirty:Z

    .line 50
    iget-boolean v0, p1, Lorg/jpos/iso/ISOMsg;->maxFieldDirty:Z

    iput-boolean v0, p0, Lorg/jpos/iso/ISOVMsg;->maxFieldDirty:Z

    .line 51
    iget-object v0, p1, Lorg/jpos/iso/ISOMsg;->header:Lorg/jpos/iso/ISOHeader;

    iput-object v0, p0, Lorg/jpos/iso/ISOVMsg;->header:Lorg/jpos/iso/ISOHeader;

    .line 52
    iget v0, p1, Lorg/jpos/iso/ISOMsg;->fieldNumber:I

    iput v0, p0, Lorg/jpos/iso/ISOVMsg;->fieldNumber:I

    .line 53
    iget v0, p1, Lorg/jpos/iso/ISOMsg;->maxField:I

    iput v0, p0, Lorg/jpos/iso/ISOVMsg;->maxField:I

    .line 54
    iget v0, p1, Lorg/jpos/iso/ISOMsg;->direction:I

    iput v0, p0, Lorg/jpos/iso/ISOVMsg;->direction:I

    .line 55
    return-void
.end method


# virtual methods
.method public addISOVError(Lorg/jpos/iso/ISOVError;)Z
    .locals 1
    .param p1, "Error"    # Lorg/jpos/iso/ISOVError;

    .line 78
    iget-object v0, p0, Lorg/jpos/iso/ISOVMsg;->errors:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public errorListIterator()Ljava/util/ListIterator;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/jpos/iso/ISOVMsg;->errors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method
