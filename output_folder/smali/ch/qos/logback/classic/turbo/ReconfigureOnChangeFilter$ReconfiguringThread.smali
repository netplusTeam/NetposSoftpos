.class Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;
.super Ljava/lang/Object;
.source "ReconfigureOnChangeFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReconfiguringThread"
.end annotation


# instance fields
.field final synthetic this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;


# direct methods
.method constructor <init>(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V
    .locals 4
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;
    .param p3, "mainURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/classic/LoggerContext;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .line 220
    .local p2, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    new-instance v0, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    .line 221
    .local v0, "joranConfigurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    invoke-static {v1}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->access$500(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 222
    if-eqz p2, :cond_0

    .line 223
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    const-string v2, "Falling back to previously registered safe configuration."

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addWarn(Ljava/lang/String;)V

    .line 225
    :try_start_0
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 226
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    invoke-static {v1}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->access$600(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lch/qos/logback/classic/joran/JoranConfigurator;->informContextOfURLUsedForConfiguration(Lch/qos/logback/core/Context;Ljava/net/URL;)V

    .line 227
    invoke-virtual {v0, p2}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/util/List;)V

    .line 228
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    const-string v2, "Re-registering previous fallback configuration once more as a fallback configuration point"

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addInfo(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p2}, Lch/qos/logback/classic/joran/JoranConfigurator;->registerSafeConfiguration(Ljava/util/List;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Lch/qos/logback/core/joran/spi/JoranException;
    iget-object v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    const-string v3, "Unexpected exception thrown by a configuration considered safe."

    invoke-virtual {v2, v3, v1}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .end local v1    # "e":Lch/qos/logback/core/joran/spi/JoranException;
    :goto_0
    goto :goto_1

    .line 234
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    const-string v2, "No previous configuration to fall back on."

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addWarn(Ljava/lang/String;)V

    .line 236
    :goto_1
    return-void
.end method

.method private performXMLConfiguration(Lch/qos/logback/classic/LoggerContext;)V
    .locals 7
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;

    .line 202
    new-instance v0, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    .line 203
    .local v0, "jc":Lch/qos/logback/classic/joran/JoranConfigurator;
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    invoke-static {v1}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->access$200(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 204
    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    iget-object v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    invoke-static {v2}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->access$300(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 205
    .local v1, "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    invoke-virtual {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;->recallSafeConfiguration()Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    iget-object v3, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    invoke-static {v3}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->access$400(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;

    move-result-object v3

    invoke-static {v3}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getMainWatchURL(Lch/qos/logback/core/Context;)Ljava/net/URL;

    move-result-object v3

    .line 207
    .local v3, "mainURL":Ljava/net/URL;
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 210
    .local v4, "threshold":J
    :try_start_0
    iget-object v6, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    iget-object v6, v6, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mainConfigurationURL:Ljava/net/URL;

    invoke-virtual {v0, v6}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/net/URL;)V

    .line 211
    invoke-virtual {v1, v4, v5}, Lch/qos/logback/core/status/StatusUtil;->hasXMLParsingErrors(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    invoke-direct {p0, p1, v2, v3}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    goto :goto_0

    .line 214
    :catch_0
    move-exception v6

    .line 215
    .local v6, "e":Lch/qos/logback/core/joran/spi/JoranException;
    invoke-direct {p0, p1, v2, v3}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V

    .line 217
    .end local v6    # "e":Lch/qos/logback/core/joran/spi/JoranException;
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 181
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    iget-object v0, v0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mainConfigurationURL:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    const-string v1, "Due to missing top level configuration file, skipping reconfiguration"

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addInfo(Ljava/lang/String;)V

    .line 183
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    invoke-static {v0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->access$000(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 186
    .local v0, "lc":Lch/qos/logback/classic/LoggerContext;
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will reset and reconfigure context named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    invoke-static {v3}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->access$100(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;

    move-result-object v3

    invoke-interface {v3}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addInfo(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    iget-object v1, v1, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mainConfigurationURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0, v0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->performXMLConfiguration(Lch/qos/logback/classic/LoggerContext;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    iget-object v1, v1, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mainConfigurationURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "groovy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    invoke-static {}, Lch/qos/logback/classic/util/EnvUtil;->isGroovyAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 194
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    iget-object v1, v1, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mainConfigurationURL:Ljava/net/URL;

    invoke-static {v0, p0, v1}, Lch/qos/logback/classic/gaffer/GafferUtil;->runGafferConfiguratorOn(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/net/URL;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;->this$0:Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    const-string v2, "Groovy classes are not available on the class path. ABORTING INITIALIZATION."

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addError(Ljava/lang/String;)V

    .line 199
    :cond_3
    :goto_0
    return-void
.end method
