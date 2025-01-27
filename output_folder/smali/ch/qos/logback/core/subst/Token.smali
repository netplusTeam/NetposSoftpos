.class public Lch/qos/logback/core/subst/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/subst/Token$Type;
    }
.end annotation


# static fields
.field public static final CURLY_LEFT_TOKEN:Lch/qos/logback/core/subst/Token;

.field public static final CURLY_RIGHT_TOKEN:Lch/qos/logback/core/subst/Token;

.field public static final DEFAULT_SEP_TOKEN:Lch/qos/logback/core/subst/Token;

.field public static final START_TOKEN:Lch/qos/logback/core/subst/Token;


# instance fields
.field payload:Ljava/lang/String;

.field type:Lch/qos/logback/core/subst/Token$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->START:Lch/qos/logback/core/subst/Token$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/subst/Token;->START_TOKEN:Lch/qos/logback/core/subst/Token;

    .line 19
    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->CURLY_LEFT:Lch/qos/logback/core/subst/Token$Type;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/subst/Token;->CURLY_LEFT_TOKEN:Lch/qos/logback/core/subst/Token;

    .line 20
    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->CURLY_RIGHT:Lch/qos/logback/core/subst/Token$Type;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/subst/Token;->CURLY_RIGHT_TOKEN:Lch/qos/logback/core/subst/Token;

    .line 21
    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->DEFAULT:Lch/qos/logback/core/subst/Token$Type;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/subst/Token;->DEFAULT_SEP_TOKEN:Lch/qos/logback/core/subst/Token;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lch/qos/logback/core/subst/Token$Type;
    .param p2, "payload"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    .line 32
    iput-object p2, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 38
    return v0

    .line 39
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    move-object v2, p1

    check-cast v2, Lch/qos/logback/core/subst/Token;

    .line 44
    .local v2, "token":Lch/qos/logback/core/subst/Token;
    iget-object v3, p0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    iget-object v4, v2, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    if-eq v3, v4, :cond_2

    .line 45
    return v1

    .line 46
    :cond_2
    iget-object v3, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 47
    :goto_0
    return v1

    .line 49
    :cond_4
    return v0

    .line 40
    .end local v2    # "token":Lch/qos/logback/core/subst/Token;
    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 54
    iget-object v0, p0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/subst/Token$Type;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 55
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 56
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", payload=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method
