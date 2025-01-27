.class public abstract Ljavassist/bytecode/SignatureAttribute$Type;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Type"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$Type;)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "ts"    # [Ljavassist/bytecode/SignatureAttribute$Type;

    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 595
    if-lez v0, :cond_0

    .line 596
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method abstract encode(Ljava/lang/StringBuffer;)V
.end method

.method public jvmTypeName()Ljava/lang/String;
    .locals 1

    .line 607
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
