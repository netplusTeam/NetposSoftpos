.class abstract Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;
.super Ljava/lang/Object;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TypedValue"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 625
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    .line 626
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 638
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 639
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 640
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 641
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;

    .line 642
    .local v2, "other":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 643
    iget-object v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    if-eqz v3, :cond_4

    return v1

    .line 644
    :cond_3
    iget-object v4, v2, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 645
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 630
    const/16 v0, 0x1f

    .line 631
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 632
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 633
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    return-object v0
.end method
