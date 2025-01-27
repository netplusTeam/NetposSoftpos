.class public Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableDiscreteDataLength;
.super Lorg/jpos/emv/EMVTagType$DataLength;
.source "EMVStandardTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVStandardTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProprietaryVariableDiscreteDataLength"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jpos/emv/EMVTagType$DataLength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 744
    new-instance v0, Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableDiscreteDataLength;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableDiscreteDataLength;-><init>(II)V

    sput-object v0, Lorg/jpos/emv/EMVStandardTagType$ProprietaryVariableDiscreteDataLength;->INSTANCE:Lorg/jpos/emv/EMVTagType$DataLength;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I

    .line 748
    invoke-direct {p0, p1, p2}, Lorg/jpos/emv/EMVTagType$DataLength;-><init>(II)V

    .line 749
    return-void
.end method


# virtual methods
.method public isFixedLength()Z
    .locals 1

    .line 753
    const/4 v0, 0x1

    return v0
.end method
