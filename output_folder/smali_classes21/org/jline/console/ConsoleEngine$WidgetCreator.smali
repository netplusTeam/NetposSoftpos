.class public Lorg/jline/console/ConsoleEngine$WidgetCreator;
.super Ljava/lang/Object;
.source "ConsoleEngine.java"

# interfaces
.implements Lorg/jline/reader/Widget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/ConsoleEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetCreator"
.end annotation


# instance fields
.field private final consoleEngine:Lorg/jline/console/ConsoleEngine;

.field private final function:Ljava/lang/Object;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jline/console/ConsoleEngine;Ljava/lang/String;)V
    .locals 1
    .param p1, "consoleEngine"    # Lorg/jline/console/ConsoleEngine;
    .param p2, "function"    # Ljava/lang/String;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lorg/jline/console/ConsoleEngine$WidgetCreator;->consoleEngine:Lorg/jline/console/ConsoleEngine;

    .line 263
    iput-object p2, p0, Lorg/jline/console/ConsoleEngine$WidgetCreator;->name:Ljava/lang/String;

    .line 264
    invoke-interface {p1, p2}, Lorg/jline/console/ConsoleEngine;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/ConsoleEngine$WidgetCreator;->function:Ljava/lang/Object;

    .line 265
    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/jline/console/ConsoleEngine$WidgetCreator;->consoleEngine:Lorg/jline/console/ConsoleEngine;

    iget-object v1, p0, Lorg/jline/console/ConsoleEngine$WidgetCreator;->function:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/jline/console/ConsoleEngine;->executeWidget(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/jline/console/ConsoleEngine$WidgetCreator;->name:Ljava/lang/String;

    return-object v0
.end method
