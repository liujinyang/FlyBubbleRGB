eventArray = [2 4 inf 2];

if ~isempty(eventArray)

    %step 1 remove inf elements
    indexInf = find(eventArray==inf);
    currentEventArrayIndex = find(eventArray~=inf);
    eventArray(indexInf) = [];

    time = 3;
    indexFireEvent = find(time>=eventArray);
    indexUnFireEvent = find(time<eventArray);
    currentEventArrayIndex = currentEventArrayIndex(indexUnFireEvent);
    %fire event
    eventArray(indexFireEvent)= [];

    time = 4;
    indexFireEvent = find(time>=eventArray);
    indexUnFireEvent = find(time<eventArray);
    currentEventArrayIndex = currentEventArrayIndex(indexUnFireEvent);
    %fire event
    eventArray(indexFireEvent)= [];

end
