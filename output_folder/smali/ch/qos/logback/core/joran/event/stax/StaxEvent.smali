.class public Lch/qos/logback/core/joran/event/stax/StaxEvent;
.super Ljava/lang/Object;
.source "StaxEvent.java"


# instance fields
.field final location:Ljavax/xml/stream/Location;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # Ljavax/xml/stream/Location;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lch/qos/logback/core/joran/event/stax/StaxEvent;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lch/qos/logback/core/joran/event/stax/StaxEvent;->location:Ljavax/xml/stream/Location;

    .line 27
    return-void
.end method


# virtual methods
.method public getLocation()Ljavax/xml/stream/Location;
    .locals 1

    .line 34
    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEvent;->location:Ljavax/xml/stream/Location;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEvent;->name:Ljava/lang/String;

    return-object v0
.end method
