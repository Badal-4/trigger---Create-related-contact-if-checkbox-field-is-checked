trigger trg1 on Account(after Insert)
{
    if(trigger.isAfter && trigger.isInsert)
    {
        if(trigger.new.size() > 0)
        {
           trgController.trgMethod(trigger.new);
        }
    }
}
