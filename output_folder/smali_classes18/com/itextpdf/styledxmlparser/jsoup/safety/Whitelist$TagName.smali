.class Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
.super Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagName"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 582
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;-><init>(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 586
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
