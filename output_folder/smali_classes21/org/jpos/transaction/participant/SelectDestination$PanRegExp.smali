.class Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;
.super Ljava/lang/Object;
.source "SelectDestination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/participant/SelectDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanRegExp"
.end annotation


# instance fields
.field private destination:Ljava/lang/String;

.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "destination"    # Ljava/lang/String;
    .param p2, "regexp"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->destination:Ljava/lang/String;

    .line 232
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->pattern:Ljava/util/regex/Pattern;

    .line 233
    return-void
.end method


# virtual methods
.method public destination()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 245
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 246
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;

    .line 248
    .local v2, "panRegExp":Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;
    iget-object v3, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->destination:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->destination:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->pattern:Ljava/util/regex/Pattern;

    iget-object v4, v2, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->pattern:Ljava/util/regex/Pattern;

    .line 249
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 248
    :goto_0
    return v0

    .line 246
    .end local v2    # "panRegExp":Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->destination:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->pattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pan"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->destination:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
