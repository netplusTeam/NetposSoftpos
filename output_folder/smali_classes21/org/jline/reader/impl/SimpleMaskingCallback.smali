.class public final Lorg/jline/reader/impl/SimpleMaskingCallback;
.super Ljava/lang/Object;
.source "SimpleMaskingCallback.java"

# interfaces
.implements Lorg/jline/reader/MaskingCallback;


# instance fields
.field private final mask:Ljava/lang/Character;


# direct methods
.method public constructor <init>(Ljava/lang/Character;)V
    .locals 1
    .param p1, "mask"    # Ljava/lang/Character;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "mask must be a non null character"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    iput-object v0, p0, Lorg/jline/reader/impl/SimpleMaskingCallback;->mask:Ljava/lang/Character;

    .line 24
    return-void
.end method


# virtual methods
.method public display(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lorg/jline/reader/impl/SimpleMaskingCallback;->mask:Ljava/lang/Character;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, ""

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1

    .line 33
    iget-object v1, p0, Lorg/jline/reader/impl/SimpleMaskingCallback;->mask:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 35
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public history(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
