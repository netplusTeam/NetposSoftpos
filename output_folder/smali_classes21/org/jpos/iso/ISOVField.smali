.class public Lorg/jpos/iso/ISOVField;
.super Lorg/jpos/iso/ISOField;
.source "ISOVField.java"

# interfaces
.implements Lorg/jpos/iso/ISOVErrorList;


# static fields
.field private static final serialVersionUID:J = -0x22bef89dc0fa9483L


# instance fields
.field protected errors:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lorg/jpos/iso/ISOField;)V
    .locals 1
    .param p1, "Source"    # Lorg/jpos/iso/ISOField;

    .line 47
    invoke-direct {p0}, Lorg/jpos/iso/ISOField;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/ISOVField;->errors:Ljava/util/LinkedList;

    .line 48
    iget v0, p1, Lorg/jpos/iso/ISOField;->fieldNumber:I

    iput v0, p0, Lorg/jpos/iso/ISOVField;->fieldNumber:I

    .line 49
    iget-object v0, p1, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    iput-object v0, p0, Lorg/jpos/iso/ISOVField;->value:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOField;Lorg/jpos/iso/ISOVError;)V
    .locals 1
    .param p1, "Source"    # Lorg/jpos/iso/ISOField;
    .param p2, "FirstError"    # Lorg/jpos/iso/ISOVError;

    .line 53
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOVField;-><init>(Lorg/jpos/iso/ISOField;)V

    .line 54
    iget-object v0, p0, Lorg/jpos/iso/ISOVField;->errors:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 55
    return-void
.end method


# virtual methods
.method public addISOVError(Lorg/jpos/iso/ISOVError;)Z
    .locals 1
    .param p1, "Error"    # Lorg/jpos/iso/ISOVError;

    .line 58
    iget-object v0, p0, Lorg/jpos/iso/ISOVField;->errors:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public errorListIterator()Ljava/util/ListIterator;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jpos/iso/ISOVField;->errors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method
